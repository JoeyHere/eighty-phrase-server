class Response < ApplicationRecord
    belongs_to :user
    belongs_to :round
    has_many :votes
end
