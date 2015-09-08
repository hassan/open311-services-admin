require 'rails_helper'

RSpec.describe "jurisdictions/edit", type: :view do
  before(:each) do
    @jurisdiction = assign(:jurisdiction, Jurisdiction.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit jurisdiction form" do
    render

    assert_select "form[action=?][method=?]", jurisdiction_path(@jurisdiction), "post" do

      assert_select "input#jurisdiction_name[name=?]", "jurisdiction[name]"
    end
  end
end
