require 'rails_helper'

RSpec.describe ServiceDefinition, type: :model do

  before(:all) do
    Service.all.map(&:destroy)
    ServiceDefinition.all.map(&:destroy)

    @service = Fabricate(:service)
  end

  it 'is invalid without a service code' do
    invalid_definition = @service.build_service_definition
    expect(invalid_definition).to_not be_valid
  end
  it 'is valid with a service code' do
    definition = @service.build_service_definition(service_code: 'XYZ')
    expect(definition).to be_valid
  end

  it 'has service attributes' do
    definition = @service.build_service_definition(service_code: 'ABC')
    definition.service_attributes << Fabricate(:service_attribute)
    definition.save
    expect(definition.service_attributes.count).to eq(1)
  end
end
