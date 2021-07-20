FactoryBot.define do
  factory :contact do
    name { "MyText" }
    birth { "2021-07-20" }
    phone { "MyText" }
    address { "MyText" }
    credit_card { "MyText" }
    franchise { "MyText" }
    email { "MyText" }
    user { nil }
  end
end
