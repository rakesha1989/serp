class Expense < ActiveRecord::Base

	belongs_to :supplier
	has_many :accounts
	
end
