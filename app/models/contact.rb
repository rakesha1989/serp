class Contact < ActiveRecord::Base

	belongs_to :client
	belongs_to :supllier
	
end
