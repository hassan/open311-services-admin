require 'rails_helper'

RSpec.describe "service_attribute_values/new", type: :view do
  before(:each) do
    assign(:service_attribute_value, ServiceAttributeValue.new(
      :service_attribute_id => 1,
      :key => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new service_attribute_value form" do
    render

    assert_select "form[action=?][method=?]", service_attribute_values_path, "post" do

      assert_select "input#service_attribute_value_service_attribute_id[name=?]", "service_attribute_value[service_attribute_id]"

      assert_select "input#service_attribute_value_key[name=?]", "service_attribute_value[key]"

      assert_select "input#service_attribute_value_name[name=?]", "service_attribute_value[name]"
    end
  end
end
