class RecievePayment < ActiveRecord::Base

	belongs_to :client
	belongs_to :invoice
	has_many :accounts
	

end
