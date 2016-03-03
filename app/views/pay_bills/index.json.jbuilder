json.array!(@pay_bills) do |pay_bill|
  json.extract! pay_bill, :id, :supplier_id, :payment_method, :payment_date, :bill_no, :reference_no, :description, :amount, :tax
  json.url pay_bill_url(pay_bill, format: :json)
end
