class Round < ApplicationRecord
    belongs_to :question
    belongs_to :room
    has_many :responses
    after_initialize :getUniqueQuestion, if: :new_record?

    # ensure a round can build itself with a question that hasn't been in the game before
    def getUniqueQuestion
        exisiting_questions = self.room.usedQuestions
        self.question = Question.all.shuffle.find{ |question| !exisiting_questions.include?(question) }
   end

    
end
