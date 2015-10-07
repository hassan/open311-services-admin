require 'rails_helper'

RSpec.describe "service_definitions/show", type: :view do
  before(:each) do
    @service_definition = assign(:service_definition, ServiceDefinition.create!(
      :service_id => 1,
      :service_code => "Service Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Service Code/)
  end
end
