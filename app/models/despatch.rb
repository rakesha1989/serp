class Despatch < ActiveRecord::Base

	belongs_to :client
	belongs_to :product

	validates_presence_of :day, :product_id, :quantity, :unit, :client_id, :d_c_number
	validates_numericality_of :quantity, :d_c_number
	validates_uniqueness_of :d_c_number

	
end
