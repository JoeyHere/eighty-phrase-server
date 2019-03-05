class RoundSerializer < ActiveModel::Serializer
  belongs_to :question
  attributes :id, :room_id, :question  

  class QuestionSerializer < ActiveModel::Serializer
    belongs_to :country
    attributes :content, :answer, :fake_answer, :country
  end

end
