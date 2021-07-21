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
require 'rails_helper'

RSpec.describe Attachtment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
