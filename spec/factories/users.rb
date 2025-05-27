FactoryBot.define do
  factory :user do
    password { "12341234" }
    sequence(:email) { |seq| format("test#{seq}@test.com") }
  end
end
