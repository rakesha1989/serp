class Material < ActiveRecord::Base

	has_many :material_products
	has_many :products, through: :material_products

	validates_presence_of :name, :stock, :unit
	

end
