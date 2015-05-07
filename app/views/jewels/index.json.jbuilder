json.array!(@jewels) do |jewel|
  json.extract! jewel, :id, :name, :description, :Collection_id, :price, :picture
  json.url jewel_url(jewel, format: :json)
end
