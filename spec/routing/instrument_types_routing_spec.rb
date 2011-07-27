require "spec_helper"

describe InstrumentTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/instrument_types").should route_to("instrument_types#index")
    end

    it "routes to #new" do
      get("/instrument_types/new").should route_to("instrument_types#new")
    end

    it "routes to #show" do
      get("/instrument_types/1").should route_to("instrument_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/instrument_types/1/edit").should route_to("instrument_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/instrument_types").should route_to("instrument_types#create")
    end

    it "routes to #update" do
      put("/instrument_types/1").should route_to("instrument_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/instrument_types/1").should route_to("instrument_types#destroy", :id => "1")
    end

  end
end
