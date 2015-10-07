require 'rails_helper'

RSpec.describe Jurisdiction, type: :model do

  it 'has a name' do
    jurisdiction = Jurisdiction.create
    expect(jurisdiction).to_not be_valid

  end
end
