# == Schema Information
#
# Table name: contacts
#
#  id          :bigint           not null, primary key
#  name        :text
#  birth       :date
#  phone       :text
#  address     :text
#  credit_card :text
#  franchise   :text
#  email       :text
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
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
