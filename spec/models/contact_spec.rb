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
require 'rails_helper'

RSpec.describe Contact, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
