require 'rails_helper'

RSpec.describe "service_attributes/show", type: :view do
  before(:each) do
    @service_attribute = assign(:service_attribute, ServiceAttribute.create!(
      :service_id => 1,
      :variable => false,
      :code => "Code",
      :datatype => "Datatype",
      :required => false,
      :datatype_description => "MyText",
      :order => 2,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Datatype/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
