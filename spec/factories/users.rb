FactoryBot.define do

  factory :user do
    nickname                  {"tarou"}
    email                     {"999@222"}
    password                  {"abc1234"}
    password_confirmation     {"abc1234"}
    family_name               {"田中"}
    first_name                {"次郎"}
    family_name_katakana      {"タナカ"}
    first_name_katakana       {"ジロウ"}
    birthday                  {"2000-01-01"}
  end
end