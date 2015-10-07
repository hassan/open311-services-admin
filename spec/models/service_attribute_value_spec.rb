require 'rails_helper'

RSpec.describe ServiceAttributeValue, type: :model do

  it 'belongs to a service attribute' do
    bad_val = ServiceAttributeValue.new
    expect(bad_val).to_not be_valid
    val = Fabricate(:service_attribute_value)
    expect(val).to be_valid
  end
end
