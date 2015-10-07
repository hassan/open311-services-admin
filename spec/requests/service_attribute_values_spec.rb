require 'rails_helper'

RSpec.describe 'ServiceAttributeValues', type: :request do
  describe 'GET /service_attribute_values' do
    it 'works! (now write some real specs)' do
      get service_attribute_values_path
      expect(response).to have_http_status(200)
    end
  end
end
