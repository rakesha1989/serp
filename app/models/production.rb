class Production < ActiveRecord::Base

	belongs_to :product
	after_save :incstock
	

  def incstock
  	product = Product.find(self.product_id)
  	product.available_stock = product.available_stock.to_f+quantity
  	product.save
  end

end
