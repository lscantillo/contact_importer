# == Schema Information
#
# Table name: attachtments
#
#  id         :bigint           not null, primary key
#  name       :text
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :attachtment do
    name { "MyText" }
    status { 1 }
  end
end
