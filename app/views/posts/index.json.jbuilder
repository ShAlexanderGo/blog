json.array!(@posts) do |post|
  json.extract! post, :id, :user, :references, :body, :text, :title
  json.url post_url(post, format: :json)
end
