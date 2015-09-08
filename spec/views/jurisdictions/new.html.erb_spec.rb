require 'rails_helper'

RSpec.describe "jurisdictions/new", type: :view do
  before(:each) do
    assign(:jurisdiction, Jurisdiction.new(
      :name => "MyString"
    ))
  end

  it "renders new jurisdiction form" do
    render

    assert_select "form[action=?][method=?]", jurisdictions_path, "post" do

      assert_select "input#jurisdiction_name[name=?]", "jurisdiction[name]"
    end
  end
end
