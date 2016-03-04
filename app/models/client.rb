class Client < ActiveRecord::Base

	has_many :contacts
  has_many :invoices
  has_many :despatches
  has_many :invoices
  has_many :recieve_payments
  

end
