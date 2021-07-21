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
class Contact < ApplicationRecord
  belongs_to :user
  REGEX_PATTERN = /^(.+)@(.+)$/
  validates :name, presence: true, format: {with: /^[a-zA-Z0-9]{4,10}$/, message: "No special characters allow"}
  validates :email,presence:true, format: {with: REGEX_PATTERN, message: "Invalid email"}
  validates :birth, :phone, :address, :credit_card, :franchise, :email, presence: true

end
