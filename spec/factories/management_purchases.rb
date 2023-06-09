FactoryBot.define do
  factory :management_purchase do
    # user_id { Faker::Number.non_zero_digit }
    # item_id { Faker::Number.non_zero_digit }
    zip_code { Faker::Number.decimal_part(digits: 3) + '-' + Faker::Number.decimal_part(digits: 4) }
    # area_id { Faker::Number.between(from: 1, to: 47) }
    area_id {2}
    city { Faker::Address.city }
    address { Faker::Address.street_address }
    building_name { Faker::Address.street_address }
    phone_number { Faker::Number.decimal_part(digits: 11) }
    token { Faker::Internet.password(min_length: 20, max_length: 30) }
  end
end
