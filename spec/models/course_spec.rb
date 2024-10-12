require 'rails_helper'

describe Course do
  it "has a valid factory" do
    expect(FactoryBot.build(:course)).to be_valid
  end
end
