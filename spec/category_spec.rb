require 'spec_helper'
describe Tender::Category do 
	
	it "should pull a list of categories" do
		puts Tender::Category.headers.inspect
		puts Tender::Category.connection.inspect
		cats = Tender::Category.find(:all)
		cats.each do |cat|
			puts "#{cat.id} - #{cat.name}"
		end
	end
	
	it "should only find k12 categories" do
		cats = Tender::Category.find_all_for_name("K12")
		cats.each do |cat|
			puts "#{cat.id} - #{cat.name}"
		end
	end
	
end