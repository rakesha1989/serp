json.array!(@permissions) do |permission|
  json.extract! permission, :id, :role_id, :user_id
  json.url permission_url(permission, format: :json)
end
