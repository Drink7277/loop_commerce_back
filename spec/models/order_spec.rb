require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'has a valid factory' do
    expect(build(:order)).to be_valid
  end

  describe 'validations' do
    subject { create(:order) }

    it { is_expected.to validate_presence_of(:details) }
    it { is_expected.to validate_presence_of(:total) }
    it { is_expected.to validate_numericality_of(:total).is_greater_than_or_equal_to(0) }
  end
end
