require 'rails_helper'

RSpec.describe "service_attributes/index", type: :view do
  before(:each) do
    assign(:service_attributes, [
      ServiceAttribute.create!(
        :service_id => 1,
        :variable => false,
        :code => "Code",
        :datatype => "Datatype",
        :required => false,
        :datatype_description => "MyText",
        :order => 2,
        :description => "MyText"
      ),
      ServiceAttribute.create!(
        :service_id => 1,
        :variable => false,
        :code => "Code",
        :datatype => "Datatype",
        :required => false,
        :datatype_description => "MyText",
        :order => 2,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of service_attributes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Datatype".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
