json.array!(@events) do |event|
  json.extract! event, :id, :user_id, :restaurant_id, :message
  json.url event_url(event, format: :json)
end
