json.array!(@interests) do |interest|
  json.extract! interest, :user_id, :article_id
  json.url interest_url(interest, format: :json)
end
