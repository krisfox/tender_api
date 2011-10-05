require 'spec_helper'

describe Tender::Discussion do
	
	it 'should create a discussion' do
		d = Tender::Discussion.new(:category_id => 53965, :title => "I need some help test try 4 hopefully with extras", :body => "Some help needed",
		                           :extras => {:user_id => 234234}, :author_email => "krisfox@gmail.com", :skip_span => true)
		d.save
	end
	
end