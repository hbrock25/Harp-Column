require "spec_helper"

describe CompositionDatesController do
  describe "routing" do

    it "routes to #index" do
      get("/composition_dates").should route_to("composition_dates#index")
    end

    it "routes to #new" do
      get("/composition_dates/new").should route_to("composition_dates#new")
    end

    it "routes to #show" do
      get("/composition_dates/1").should route_to("composition_dates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/composition_dates/1/edit").should route_to("composition_dates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/composition_dates").should route_to("composition_dates#create")
    end

    it "routes to #update" do
      put("/composition_dates/1").should route_to("composition_dates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/composition_dates/1").should route_to("composition_dates#destroy", :id => "1")
    end

  end
end
