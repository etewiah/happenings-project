require 'spec_helper'

describe FlatHappening do
  pending "add some examples to (or delete) #{__FILE__}"
	it "has a valid factory" do 
		FactoryGirl.create(:flat_happening).should be_valid
	end
	it "is invalid without a name" do
		FlatHappening.new(:name => "").should_not be_valid	
	end

	it "is invalid without a lastname" 
	it "returns a contact's full name as a string" 
end


