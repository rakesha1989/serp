class PayBill < ActiveRecord::Base

	belongs_to :supplier
	has_many :accounts
	

end
