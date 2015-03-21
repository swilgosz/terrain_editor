json.array!(@users) do |user|
  json.extract! user, :id, :nickname, :organization
  json.url user_url(user, format: :json)
end
