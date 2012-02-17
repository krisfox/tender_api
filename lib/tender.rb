require 'active_resource'
require 'active_support'

module Tender
	
	class << self
	
		attr_accessor :host_format, :domain_format, :protocol, :port
		attr_reader :auth
	
		def update_token_header(resource)
			resource.headers['X-Tender-Auth'] = self.auth
			resource.headers['Accept'] = "application/vnd.tender-v1+json"
		end
		
		def update_format(resource) 
			resource.format = :json
		end
		
		def update_site(resource)
			resource.site = resource.site_format % (host_format % [protocol, domain_format % 'revolutionprep'])
  	end

		def resources
			@resources ||= []
		end

		def auth=(auth)
			@auth = auth
			resources.each do |klass|
				update_token_header(klass)
			end
		end
		
	end
	
	self.host_format   = '%s://%s'
  self.domain_format = 'api.tenderapp.com/%s'
  self.protocol      = 'http'
  self.port	         = ''
	
	class Base < ActiveResource::Base
		def self.inherited(base)
			Tender.resources << base
			class << base
				attr_accessor :site_format
				
				def site_with_update
					Tender.update_site(self)
					site_without_update
				end
				alias_method_chain :site, :update
			end
			# self.format = :json
			# self.logger = Logger.new('test.log')
			# self.logger.level = Logger::DEBUG
			base.site_format = "%s"
			super
			Tender.update_token_header(base)
			Tender.update_format(base)
		end
	end
	
end
