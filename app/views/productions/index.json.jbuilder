json.array!(@productions) do |production|
  json.extract! production, :id, :quntity, :unit, :product_id
  json.url production_url(production, format: :json)
end
