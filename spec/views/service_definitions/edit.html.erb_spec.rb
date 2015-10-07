require 'rails_helper'

RSpec.describe "service_definitions/edit", type: :view do
  before(:each) do
    @service_definition = assign(:service_definition, ServiceDefinition.create!(
      :service_id => 1,
      :service_code => "MyString"
    ))
  end

  it "renders the edit service_definition form" do
    render

    assert_select "form[action=?][method=?]", service_definition_path(@service_definition), "post" do

      assert_select "input#service_definition_service_id[name=?]", "service_definition[service_id]"

      assert_select "input#service_definition_service_code[name=?]", "service_definition[service_code]"
    end
  end
end
