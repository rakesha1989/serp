json.array!(@materials) do |material|
  json.extract! material, :id, :name, :stock, :product_id
  json.url material_url(material, format: :json)
end
