require 'rails_helper'

RSpec.describe Service, type: :model do

  it 'is invalid without jurisdiction' do
    service = Fabricate(:service)
    service.jurisdiction_id = nil
    service.save
    expect(service).to_not be_valid
  end

  it 'is invalid without service_type' do
    service = Fabricate(:service)
    service.service_type = nil
    service.save
    expect(service).to_not be_valid
  end

  it 'has a service definition with a matching service code' do
    service = Fabricate(:service)
    expect(service.service_definition).to_not be_nil
    expect(service.service_definition.service_code).to eq(service.service_code)
  end

end
