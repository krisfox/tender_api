require 'active_resource'
require 'active_support'

module Tender
	
	class << self
	
		def update_token_header(resource)
			resource.headers['X-Tender-Auth'] = "3ed36f0bb33a78dbdd374fa2f9b960820261a575"
			resource.headers['Accept'] = "application/vnd.tender-v1+json"
		end
		
		def update_format(resource) 
			resource.format = :json
		end
		
	end
	
	class Base < ActiveResource::Base
		def self.inherited(base)
			self.site = "http://api.tenderapp.com/revolutionprep/"
			# self.format = :json
			Tender.update_token_header(base)
			Tender.update_format(base)
			self.logger = Logger.new('test.log')
			self.logger.level = Logger::DEBUG
		end
	end
	
end
