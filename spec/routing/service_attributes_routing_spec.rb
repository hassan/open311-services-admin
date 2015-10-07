require "rails_helper"

RSpec.describe ServiceAttributesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/service_attributes").to route_to("service_attributes#index")
    end

    it "routes to #new" do
      expect(:get => "/service_attributes/new").to route_to("service_attributes#new")
    end

    it "routes to #show" do
      expect(:get => "/service_attributes/1").to route_to("service_attributes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/service_attributes/1/edit").to route_to("service_attributes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/service_attributes").to route_to("service_attributes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/service_attributes/1").to route_to("service_attributes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/service_attributes/1").to route_to("service_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/service_attributes/1").to route_to("service_attributes#destroy", :id => "1")
    end

  end
end
