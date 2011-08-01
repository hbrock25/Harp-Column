require "spec_helper"

describe DifficultiesController do
  describe "routing" do

    it "routes to #index" do
      get("/difficulties").should route_to("difficulties#index")
    end

    it "routes to #new" do
      get("/difficulties/new").should route_to("difficulties#new")
    end

    it "routes to #show" do
      get("/difficulties/1").should route_to("difficulties#show", :id => "1")
    end

    it "routes to #edit" do
      get("/difficulties/1/edit").should route_to("difficulties#edit", :id => "1")
    end

    it "routes to #create" do
      post("/difficulties").should route_to("difficulties#create")
    end

    it "routes to #update" do
      put("/difficulties/1").should route_to("difficulties#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/difficulties/1").should route_to("difficulties#destroy", :id => "1")
    end

  end
end
