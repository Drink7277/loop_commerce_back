class Order < ApplicationRecord
  validates :details, presence: true
  validates :total, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
