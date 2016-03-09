json.array!(@secposts) do |secpost|
  json.extract! secpost, :id, :title, :body, :user_id
  json.url secpost_url(secpost, format: :json)
end
