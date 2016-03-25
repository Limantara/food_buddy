json.array!(@comments) do |comment|
  json.extract! comment, :id, :message, :event_id, :user_id
  json.url comment_url(comment, format: :json)
end
