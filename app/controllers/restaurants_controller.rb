class RestaurantsController < ApplicationController
  before_action :authenticate_user!

  # GET /restaurants
  def index
    location = params[:location]
    search = params[:search]
    @businesses = []
    if !location.nil? and !search.nil?
      response = Yelp.client.search(location, { term: search})
      @businesses = response.businesses
      save_restaurants()
    end
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :time)
  end

  def save_restaurants
    @businesses.each do |business|
      restaurant = Restaurant.find_by :yelp_id => business.id

      if restaurant.nil?
        address = "#{business.location.address[0]} <br> " +
          "#{business.location.city}, #{business.location.state_code} #{business.location.postal_code }"

          Restaurant.create(:name => business.name, :address => address, 
                            :yelp_id => business.id,
                            :image_url => business.image_url, 
                            :review_count => business.review_count,
                            :rating_img_url => business.rating_img_url, 
                            :latitude =>business.location.coordinate.latitude,
                            :longitude =>business.location.coordinate.longitude)
          end
    end
  end
end
