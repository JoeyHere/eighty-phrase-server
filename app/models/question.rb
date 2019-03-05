class Question < ApplicationRecord
    has_many :rounds
    belongs_to :country
end
