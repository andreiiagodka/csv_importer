FactoryBot.define do
  factory :supplier do
    name { Faker::Commerce.brand }
    code { Faker::Number.number(digits: 4) }

    trait :import do
      code { 2437 }
    end
  end
end
