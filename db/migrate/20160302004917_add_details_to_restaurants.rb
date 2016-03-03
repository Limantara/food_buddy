class AddDetailsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :yelp_id, :string
    add_column :restaurants, :image_url, :string
    add_column :restaurants, :review_count, :integer
    add_column :restaurants, :rating_img_url, :string
  end
end
