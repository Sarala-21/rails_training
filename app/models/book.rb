class Book < ApplicationRecord
	has_one :author

	accepts_nested_attributes_for :author

	def self.search(search)
  		if search
  			where(["name LIKE ?","%#{search}%"]) 
    	else
    		all
  		end
	end
end
