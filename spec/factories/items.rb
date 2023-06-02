FactoryBot.define do

  factory :item do
    #image                        {Faker::Lorem.sentence}
    name                         {"商品名"}
    description                  {"説明"}
    category_id                  {2}
    condition_id                 {2}
    shipping_charge_id           {2}
    area_id                      {2}
    delivery_time_id             {2}
    price                        {"2000"}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

  end
end
