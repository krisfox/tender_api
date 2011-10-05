require 'spec_helper'
describe Tender::Category do 
	
	it "should pull a list of categories" do
		puts Tender::Category.headers.inspect
		puts Tender::Category.connection.inspect
		puts Tender::Category.find(:all).inspect
	end
	
end