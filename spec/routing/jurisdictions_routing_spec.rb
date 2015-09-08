require "rails_helper"

RSpec.describe JurisdictionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/jurisdictions").to route_to("jurisdictions#index")
    end

    it "routes to #new" do
      expect(:get => "/jurisdictions/new").to route_to("jurisdictions#new")
    end

    it "routes to #show" do
      expect(:get => "/jurisdictions/1").to route_to("jurisdictions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/jurisdictions/1/edit").to route_to("jurisdictions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/jurisdictions").to route_to("jurisdictions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/jurisdictions/1").to route_to("jurisdictions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/jurisdictions/1").to route_to("jurisdictions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/jurisdictions/1").to route_to("jurisdictions#destroy", :id => "1")
    end

  end
end
