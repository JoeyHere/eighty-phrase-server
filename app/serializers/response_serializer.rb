class ResponseSerializer < ActiveModel::Serializer
    attributes :user_id, :content, :kind
end
