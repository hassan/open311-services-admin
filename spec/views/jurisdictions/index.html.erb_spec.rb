require 'rails_helper'

RSpec.describe "jurisdictions/index", type: :view do
  before(:each) do
    assign(:jurisdictions, [
      Jurisdiction.create!(
        :name => "Name"
      ),
      Jurisdiction.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of jurisdictions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
