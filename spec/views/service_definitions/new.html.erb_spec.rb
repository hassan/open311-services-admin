require 'rails_helper'

RSpec.describe "service_definitions/new", type: :view do
  before(:each) do
    assign(:service_definition, ServiceDefinition.new(
      :service_id => 1,
      :service_code => "MyString"
    ))
  end

  it "renders new service_definition form" do
    render

    assert_select "form[action=?][method=?]", service_definitions_path, "post" do

      assert_select "input#service_definition_service_id[name=?]", "service_definition[service_id]"

      assert_select "input#service_definition_service_code[name=?]", "service_definition[service_code]"
    end
  end
end
