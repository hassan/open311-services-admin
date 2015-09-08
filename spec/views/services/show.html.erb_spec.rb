require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :service_code => "Service Code",
      :service_name => "Service Name",
      :service_type => "Service Type",
      :description => "MyText",
      :metadata => false,
      :keywords => "MyText",
      :group => "Group",
      :jurisdiction_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Service Code/)
    expect(rendered).to match(/Service Name/)
    expect(rendered).to match(/Service Type/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Group/)
    expect(rendered).to match(/1/)
  end
end
