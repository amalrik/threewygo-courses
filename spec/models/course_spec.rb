require 'rails_helper'

describe Course do
  it "has a valid factory" do
    expect(FactoryBot.build(:course)).to be_valid
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:start_at) }
    it { should validate_presence_of(:end_at) }
  end
end
