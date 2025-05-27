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

  describe '.search' do
    let!(:product1) { create(:product, name: "Super Headphones", description: "Best sound quality") }
    let!(:product2) { create(:product, name: "Wireless Mouse", description: "Smooth and fast") }
    let!(:product3) { create(:product, name: "Coffee Mug", description: "Keeps your drink hot") }

    it "returns products matching the name" do
      expect(Product.search("Headphones")).to include(product1)
      expect(Product.search("Headphones")).not_to include(product2, product3)
    end

    it "returns products matching the description" do
      expect(Product.search("sound")).to include(product1)
      expect(Product.search("sound")).not_to include(product2, product3)
    end

    it "returns all products if search term is blank" do
      expect(Product.search("")).to include(product1, product2, product3)
    end
  end
end
