class AddCoordinateToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :latitude, :string
    add_column :restaurants, :longitude, :string
  end
end
