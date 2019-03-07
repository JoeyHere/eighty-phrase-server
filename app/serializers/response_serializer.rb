class ResponseSerializer < ActiveModel::Serializer
    has_many :votes
    attributes :id, :user_id, :content, :kind
end
