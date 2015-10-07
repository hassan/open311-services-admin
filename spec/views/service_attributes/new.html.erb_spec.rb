require 'rails_helper'

RSpec.describe "service_attributes/new", type: :view do
  before(:each) do
    assign(:service_attribute, ServiceAttribute.new(
      :service_id => 1,
      :variable => false,
      :code => "MyString",
      :datatype => "MyString",
      :required => false,
      :datatype_description => "MyText",
      :order => 1,
      :description => "MyText"
    ))
  end

  it "renders new service_attribute form" do
    render

    assert_select "form[action=?][method=?]", service_attributes_path, "post" do

      assert_select "input#service_attribute_service_id[name=?]", "service_attribute[service_id]"

      assert_select "input#service_attribute_variable[name=?]", "service_attribute[variable]"

      assert_select "input#service_attribute_code[name=?]", "service_attribute[code]"

      assert_select "input#service_attribute_datatype[name=?]", "service_attribute[datatype]"

      assert_select "input#service_attribute_required[name=?]", "service_attribute[required]"

      assert_select "textarea#service_attribute_datatype_description[name=?]", "service_attribute[datatype_description]"

      assert_select "input#service_attribute_order[name=?]", "service_attribute[order]"

      assert_select "textarea#service_attribute_description[name=?]", "service_attribute[description]"
    end
  end
end
