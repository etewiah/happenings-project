require "spec_helper"

describe MovieVenuesController do
  describe "routing" do

    it "routes to #index" do
      get("/movie_venues").should route_to("movie_venues#index")
    end

    it "routes to #new" do
      get("/movie_venues/new").should route_to("movie_venues#new")
    end

    it "routes to #show" do
      get("/movie_venues/1").should route_to("movie_venues#show", :id => "1")
    end

    it "routes to #edit" do
      get("/movie_venues/1/edit").should route_to("movie_venues#edit", :id => "1")
    end

    it "routes to #create" do
      post("/movie_venues").should route_to("movie_venues#create")
    end

    it "routes to #update" do
      put("/movie_venues/1").should route_to("movie_venues#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/movie_venues/1").should route_to("movie_venues#destroy", :id => "1")
    end

  end
end
