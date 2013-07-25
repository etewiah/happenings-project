require "spec_helper"

describe MovieHappeningsController do
  describe "routing" do

    it "routes to #index" do
      get("/movie_happenings").should route_to("movie_happenings#index")
    end

    it "routes to #new" do
      get("/movie_happenings/new").should route_to("movie_happenings#new")
    end

    it "routes to #show" do
      get("/movie_happenings/1").should route_to("movie_happenings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/movie_happenings/1/edit").should route_to("movie_happenings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/movie_happenings").should route_to("movie_happenings#create")
    end

    it "routes to #update" do
      put("/movie_happenings/1").should route_to("movie_happenings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/movie_happenings/1").should route_to("movie_happenings#destroy", :id => "1")
    end

  end
end
