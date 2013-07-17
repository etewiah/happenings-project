require "spec_helper"

describe Api::V1::FlatHappeningsController do
  describe "routing" do

    it "routes to #index" do
      get("/api/v1/flat_happenings").should route_to("api/v1/flat_happenings#index")
    end

    # it "routes to #new" do
    #   get("/api/v1/flat_happenings/new").should route_to("api/v1/flat_happenings#new")
    # end

    it "routes to #show" do
      get("/api/v1/flat_happenings/1").should route_to("api/v1/flat_happenings#show", :id => "1")
    end

    # it "routes to #edit" do
    #   get("/api/v1/flat_happenings/1/edit").should route_to("api/v1/flat_happenings#edit", :id => "1")
    # end

    it "routes to #create" do
      post("/api/v1/flat_happenings").should route_to("api/v1/flat_happenings#create")
    end

    it "routes to #update" do
      put("/api/v1/flat_happenings/1").should route_to("api/v1/flat_happenings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/api/v1/flat_happenings/1").should route_to("api/v1/flat_happenings#destroy", :id => "1")
    end

  end
end
