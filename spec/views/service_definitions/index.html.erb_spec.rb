require 'rails_helper'

RSpec.describe "service_definitions/index", type: :view do
  before(:each) do
    assign(:service_definitions, [
      ServiceDefinition.create!(
        :service_id => 1,
        :service_code => "Service Code"
      ),
      ServiceDefinition.create!(
        :service_id => 1,
        :service_code => "Service Code"
      )
    ])
  end

  it "renders a list of service_definitions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Service Code".to_s, :count => 2
  end
end
