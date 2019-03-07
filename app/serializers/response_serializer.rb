class ResponseSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :content, :kind
end
