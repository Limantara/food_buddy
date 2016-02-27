class PagesController < ApplicationController
  def home
    response = Yelp.client.search('San Jose', { term: 'thai restaurants'})
    @businesses = response.businesses
  end
end