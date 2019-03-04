class User < ApplicationRecord
    belongs_to :game
    has_many :responses
    has_many :votes
end
