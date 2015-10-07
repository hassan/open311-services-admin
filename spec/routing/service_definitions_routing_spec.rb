require "rails_helper"

RSpec.describe ServiceDefinitionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/service_definitions").to route_to("service_definitions#index")
    end

    it "routes to #new" do
      expect(:get => "/service_definitions/new").to route_to("service_definitions#new")
    end

    it "routes to #show" do
      expect(:get => "/service_definitions/1").to route_to("service_definitions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/service_definitions/1/edit").to route_to("service_definitions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/service_definitions").to route_to("service_definitions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/service_definitions/1").to route_to("service_definitions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/service_definitions/1").to route_to("service_definitions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/service_definitions/1").to route_to("service_definitions#destroy", :id => "1")
    end

  end
end
