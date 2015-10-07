require 'rails_helper'

RSpec.describe "service_attribute_values/show", type: :view do
  before(:each) do
    @service_attribute_value = assign(:service_attribute_value, ServiceAttributeValue.create!(
      :service_attribute_id => 1,
      :key => "Key",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Key/)
    expect(rendered).to match(/Name/)
  end
end
