class RoundSerializer < ActiveModel::Serializer
  belongs_to :question
  has_many :responses
  has_many :votes

  attributes :id, :room_id, :status, :responses, :votes
end
