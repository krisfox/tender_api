module Tender
	
	class Category < Tender::Base
		
		def id
			self.href.match(/(\d+)/)[0]
		end
		
		def self.find_all_for_name(str)
			find(:all).reject{|cat| cat unless cat.name.index(str) }
		end
		
	end

end