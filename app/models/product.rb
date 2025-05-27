class Product < ApplicationRecord
  # Attributes based on your data
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :category, presence: true
  validates :description, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :reviews, numericality: { greater_than_or_equal_to: 0 }

  # Optional: Handle original price validation
  validates :original_price, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  # Scope examples
  scope :in_stock, -> { where(in_stock: true) }

  scope :category, ->(category) do
    return self if category.blank?

    where(category: category)
  end

  scope :search, ->(name) do
    return self if name.blank?

    where('products.name ilike ? or products.description ilike ?', "%#{name}%", "%#{name}%")
  end
end
