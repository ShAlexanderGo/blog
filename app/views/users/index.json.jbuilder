json.array!(@users) do |user|
  json.extract! user, :id, :firstName, :middleName, :lastName, :login, :password
  json.url user_url(user, format: :json)
end
