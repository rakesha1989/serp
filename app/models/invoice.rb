class Invoice < ActiveRecord::Base

	belongs_to :client
	belongs_to :product
	has_many :accounts
	
end
