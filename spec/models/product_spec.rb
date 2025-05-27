require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'has a valid factory' do
    expect(build(:product)).to be_valid
  end

  describe 'validations' do
    subject { create(:product) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:category) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:original_price).is_greater_than_or_equal_to(0).allow_nil }
    it { is_expected.to validate_numericality_of(:rating).is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:reviews).is_greater_than_or_equal_to(0) }
  end
end
