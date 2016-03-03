json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :address, :phone_number, :info, :p_a_n_no, :t_i_n_no, :c_s_t_reg, :key_contact_person
  json.url supplier_url(supplier, format: :json)
end
