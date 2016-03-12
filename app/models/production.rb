class Production < ActiveRecord::Base

	belongs_to :product
	after_save :incstock

	validates_presence_of :unit, :product_id, :quantity
	validates_numericality_of :quantity
	

  def incstock
  	product = Product.find(self.product_id)
  	product.available_stock = product.available_stock.to_f+quantity
  	product.save
  end

end
