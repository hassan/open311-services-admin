require "rails_helper"

RSpec.describe ServiceAttributeValuesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/service_attribute_values").to route_to("service_attribute_values#index")
    end

    it "routes to #new" do
      expect(:get => "/service_attribute_values/new").to route_to("service_attribute_values#new")
    end

    it "routes to #show" do
      expect(:get => "/service_attribute_values/1").to route_to("service_attribute_values#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/service_attribute_values/1/edit").to route_to("service_attribute_values#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/service_attribute_values").to route_to("service_attribute_values#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/service_attribute_values/1").to route_to("service_attribute_values#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/service_attribute_values/1").to route_to("service_attribute_values#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/service_attribute_values/1").to route_to("service_attribute_values#destroy", :id => "1")
    end

  end
end
