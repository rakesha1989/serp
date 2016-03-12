class PurchaseOrder < ActiveRecord::Base

	belongs_to :supplier


	validates_presence_of :supplier_id, :p_o_date, :shipping_address, :product_id, :quantity, :description, :amount, :tax, :unit, :rate
	
end
