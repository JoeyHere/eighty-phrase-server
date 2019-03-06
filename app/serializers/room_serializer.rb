class RoomSerializer < ActiveModel::Serializer
  has_many :users
  attributes :id, :code, :status, :users, :current_round

  class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :score
  end

  def current_round
    RoundSerializer.new(object.currentRound) if object.currentRound
  end
end
