class Company < ActiveRecord::Base

	has_one :account
	has_many :clients
	has_many :suppliers
	has_many :employees


end
