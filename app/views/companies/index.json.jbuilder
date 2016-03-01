json.array!(@companies) do |company|
  json.extract! company, :id, :name, :p_a_n_number, :t_i_n_no, :vat_sales, :vat_purchase, :adress, :owner
  json.url company_url(company, format: :json)
end
