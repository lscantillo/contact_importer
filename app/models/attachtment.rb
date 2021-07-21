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
class Attachtment < ApplicationRecord
    enum status: [:on_hold, :processing, :failed, :finished]
end
