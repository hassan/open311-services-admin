require 'rails_helper'

RSpec.describe "services/new", type: :view do
  before(:each) do
    assign(:service, Service.new(
      :service_code => "MyString",
      :service_name => "MyString",
      :service_type => "MyString",
      :description => "MyText",
      :metadata => false,
      :keywords => "MyText",
      :group => "MyString",
      :jurisdiction_id => 1
    ))
  end

  it "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do

      assert_select "input#service_service_code[name=?]", "service[service_code]"

      assert_select "input#service_service_name[name=?]", "service[service_name]"

      assert_select "input#service_service_type[name=?]", "service[service_type]"

      assert_select "textarea#service_description[name=?]", "service[description]"

      assert_select "input#service_metadata[name=?]", "service[metadata]"

      assert_select "textarea#service_keywords[name=?]", "service[keywords]"

      assert_select "input#service_group[name=?]", "service[group]"

      assert_select "input#service_jurisdiction_id[name=?]", "service[jurisdiction_id]"
    end
  end
end
