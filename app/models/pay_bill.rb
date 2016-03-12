class PayBill < ActiveRecord::Base

	belongs_to :supplier
	has_many :accounts, dependent: :destroy
	
	validates_presence_of :supplier_id, :bill_no, :payment_method, :payment_date, :reference_no, :description, :amount, :tax
	validates_numericality_of :amount, :tax

end
