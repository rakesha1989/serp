json.array!(@clients) do |client|
  json.extract! client, :id, :name, :address, :phone_number, :info, :p_a_n_number, :t_i_n_number, :c_s_t_reg, :key_contact_person
  json.url client_url(client, format: :json)
end
