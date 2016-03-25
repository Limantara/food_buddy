json.array!(@foods) do |food|
  json.extract! food, :id, :name, :image, :price, :restaurant_id
  json.url food_url(food, format: :json)
end
