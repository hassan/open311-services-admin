require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        :service_code => "Service Code",
        :service_name => "Service Name",
        :service_type => "Service Type",
        :description => "MyText",
        :metadata => false,
        :keywords => "MyText",
        :group => "Group",
        :jurisdiction_id => 1
      ),
      Service.create!(
        :service_code => "Service Code",
        :service_name => "Service Name",
        :service_type => "Service Type",
        :description => "MyText",
        :metadata => false,
        :keywords => "MyText",
        :group => "Group",
        :jurisdiction_id => 1
      )
    ])
  end

  it "renders a list of services" do
    render
    assert_select "tr>td", :text => "Service Code".to_s, :count => 2
    assert_select "tr>td", :text => "Service Name".to_s, :count => 2
    assert_select "tr>td", :text => "Service Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Group".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
