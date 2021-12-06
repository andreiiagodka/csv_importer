FactoryBot.define do
  factory :product do
    sku { Faker::Number.hexadecimal(digits: 4) }
    name { Faker::Commerce.product_name }
    price { Faker::Commerce.price }
    supplier_code { Faker::Number.number(digits: 4) }
    column_1 { Faker::Lorem.word }
    column_2 { Faker::Lorem.word }
    column_3 { Faker::Lorem.word }
    column_4 { Faker::Lorem.word }
    column_5 { Faker::Lorem.word }
  end
end
