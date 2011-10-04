require 'active_resource'
require 'active_support'

module Tender
	
	class Base < ActiveResource::Base
		
			self.site = "https://api.tenderapp.com/revolutionprep"
		
	end
	
end