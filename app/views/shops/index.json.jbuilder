json.array!(@shops) do |shop|
  json.extract! shop, 
  json.url shop_url(shop, format: :json)
end
