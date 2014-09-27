json.array!(@user1s) do |user1|
  json.extract! user1, :id, :name, :email
  json.url user1_url(user1, format: :json)
end
