require 'spec_helper'

describe 'happenings' do
context "#index (GET /api/v1/flat_happenings.json)" do
  # create 30 Artwork documents using FactoryGirl, and do a HTTP GET request on "/artworks.json"
  before(:each) do
    30.times { FactoryGirl.create(:flat_happening) }
    get "/api/v1/flat_happenings.json"
  end
  describe "should list all flat_happenings" do
    # the request returns a variable called "response", which we can then make sure comes back as expected
    # it { 
    #   binding.pry
    #   response.should be_ok }
    it { JSON.parse(response.body)["flat_happenings"].should be_a_kind_of(Array) }
    it { JSON.parse(response.body)["flat_happenings"].length.should eq 30 }
    it 'response should be ok' do
      # binding.pry
      response.should be_ok
    end

  end

  # subject do
  #   get '/api/v1/flat_happenings.json'
  #   JSON.parse(response.body)
  # end

  # it 'should return a list of happenings' do
  #   binding.pry
  #   # breaking here allows me to examine 'subject'
  #   should == [
  #     {:name => 'Alice', :login => 'alice'},
  #     {:name => 'Bob', :login => 'bob'}
  #   ]
  # end
end
end


