class Attachtment < ApplicationRecord
    enum status: [:on_hold, :processing, :failed, :finished]
end
