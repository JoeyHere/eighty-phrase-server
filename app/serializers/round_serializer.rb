class RoundSerializer < ActiveModel::Serializer
  belongs_to :question
  has_many :responses

  attributes :id, :room_id, :status, :responses
end
