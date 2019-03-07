class QuestionSerializer < ActiveModel::Serializer
    belongs_to :country
    attributes :content, :country
end