require 'rails_helper'

RSpec.describe "service_attribute_values/index", type: :view do
  before(:each) do
    assign(:service_attribute_values, [
      ServiceAttributeValue.create!(
        :service_attribute_id => 1,
        :key => "Key",
        :name => "Name"
      ),
      ServiceAttributeValue.create!(
        :service_attribute_id => 1,
        :key => "Key",
        :name => "Name"
      )
    ])
  end

  it "renders a list of service_attribute_values" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
