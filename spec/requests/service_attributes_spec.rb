require 'rails_helper'

RSpec.describe "ServiceAttributes", type: :request do
  describe "GET /service_attributes" do
    it "works! (now write some real specs)" do
      get service_attributes_path
      expect(response).to have_http_status(200)
    end
  end
end
