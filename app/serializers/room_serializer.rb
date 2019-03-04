class RoomSerializer < ActiveModel::Serializer
  has_many :users

  attributes :id, :code, :active, :users

  # class UserSerializer < ActiveModel::Serializer
  #   attributes :id, :admin, :name, :score
  # end

end
