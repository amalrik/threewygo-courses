require 'rails_helper'

describe Course do
  let(:course) { FactoryBot.create(:course, end_at: end_at) }

  it "has a valid factory" do
    expect(FactoryBot.build(:course)).to be_valid
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:start_at) }
    it { should validate_presence_of(:end_at) }
  end

  describe '.current' do
    context 'when end_date is older than today' do
      let(:end_at) { 1.week.ago }
      it 'does not display expired courses' do
        expect(Course.current).to be_empty
      end
    end

    context 'when end_date is in the future' do
      let(:end_at) { 1.week.from_now }

      it 'does display current courses' do
        expect(Course.current).to contain_exactly(course)
      end
    end
  end
end
