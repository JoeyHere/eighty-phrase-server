class Round < ApplicationRecord
    has_one :question
    belongs_to :room
end
