FactoryBot.define do
  factory :order_address do
    post_code { '123-4567' }
    prefecture_id { Faker::Number.between(from: 1, to: 47) }
    municipalities { Faker::Address.street_name }
    address { Faker::Address.street_address }
    building_name { Faker::Address.secondary_address }
    phone_number { '09012345678' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
