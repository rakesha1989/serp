class Product < ActiveRecord::Base

	has_many :material_products
	has_many :materials, through: :material_products
	has_many :product_categories
	has_many :categories, through: :product_categories
	belongs_to :client
	
end
