FactoryBot.define do
  factory :product do
    sequence(:name) { |seq| format("product#{seq}") }
    price { "9.99" }
    original_price { "9.99" }
    image { "MyString" }
    category { "MyString" }
    description { "MyText" }
    rating { 1.5 }
    reviews { 1 }
    in_stock { false }
    features { "" }
  end
end
