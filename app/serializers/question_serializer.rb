class QuestionSerializer < ActiveModel::Serializer
    belongs_to :country
    attributes :content, :answer, :fake_answer, :country
end