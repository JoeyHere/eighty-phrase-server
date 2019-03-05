class RoomSerializer < ActiveModel::Serializer
  has_many :users
  attributes :id, :code, :status, :users

  class UserSerializer < ActiveModel::Serializer
    attributes :id, :admin, :name, :score
  end

end
