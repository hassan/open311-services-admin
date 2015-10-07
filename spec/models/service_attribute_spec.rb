require 'rails_helper'

RSpec.describe ServiceAttribute, type: :model do

  it 'belongs to a service definition' do
    service_attribute = Fabricate(:service_attribute)
    expect(service_attribute.service_definition_id).to_not be_nil
  end

end
