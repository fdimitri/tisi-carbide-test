json.array!(@users) do |user|
  json.extract! user, :id, :userName, :firstName, :lastName, :eMail
  json.url user_url(user, format: :json)
end
