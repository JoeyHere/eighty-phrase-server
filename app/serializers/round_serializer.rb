class RoundSerializer < ActiveModel::Serializer
  belongs_to :question
  attributes :id, :room_id
end
