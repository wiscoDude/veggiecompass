require "spec_helper"

describe PlantTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/plant_types").should route_to("plant_types#index")
    end

    it "routes to #new" do
      get("/plant_types/new").should route_to("plant_types#new")
    end

    it "routes to #show" do
      get("/plant_types/1").should route_to("plant_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/plant_types/1/edit").should route_to("plant_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/plant_types").should route_to("plant_types#create")
    end

    it "routes to #update" do
      put("/plant_types/1").should route_to("plant_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/plant_types/1").should route_to("plant_types#destroy", :id => "1")
    end

  end
end
