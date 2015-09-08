require 'rails_helper'

RSpec.describe "Jurisdictions", type: :request do
  describe "GET /jurisdictions" do
    it "works! (now write some real specs)" do
      get jurisdictions_path
      expect(response).to have_http_status(200)
    end
  end
end
