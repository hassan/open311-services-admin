require 'rails_helper'

RSpec.describe "jurisdictions/show", type: :view do
  before(:each) do
    @jurisdiction = assign(:jurisdiction, Jurisdiction.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
