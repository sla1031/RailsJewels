json.array!(@stores) do |store|
  json.extract! store, :id, :name, :phone, :address1, :address2, :city, :state, :zip
  json.url store_url(store, format: :json)
end
