class User < ApplicationRecord
    belongs_to :room
    has_many :responses
    has_many :votes
end
