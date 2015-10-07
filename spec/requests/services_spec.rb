require 'rails_helper'

RSpec.describe 'Services', type: :request do

  before(:all) do
    Jurisdiction.all.map(&:destroy)
    Service.all.map(&:destroy)
    @good_service = Fabricate(:service)
  end

  describe 'GET /services' do
    it 'returns a collection' do
      get services_path
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /services/:id' do
    it 'returns a valid instance' do
      get service_path(@good_service)
      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
    end

    it 'returns 404 for an invalid jurisdiction id' do
      @bad_service  = Fabricate(:service)
      @bad_service.update_attributes(jurisdiction_id: 10000000)
      # @bad_service.jurisdiction_id = nil
      # puts "\n----\n#{@bad_service.inspect}"
      get service_path(@bad_service)
      expect(response).to have_http_status(404)
    end
  end
end
