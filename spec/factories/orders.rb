FactoryBot.define do
  factory :order do
    details { { items: [], customer: {} } }
    total { "9.99" }
  end
end
