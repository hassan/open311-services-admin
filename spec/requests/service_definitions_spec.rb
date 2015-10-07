require 'rails_helper'

RSpec.describe "ServiceDefinitions", type: :request do
  describe "GET /service_definitions" do
    it "works! (now write some real specs)" do
      get service_definitions_path
      expect(response).to have_http_status(200)
    end
  end
end
