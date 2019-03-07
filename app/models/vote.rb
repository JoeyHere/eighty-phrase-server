class Vote < ApplicationRecord
    belongs_to :response
    belongs_to :user
    belongs_to :round
end
