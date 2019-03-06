class Room < ApplicationRecord
    has_many :users
    has_many :rounds
    after_initialize :createUniqueCode, if: :new_record?

    # ensures after a room is created it assigns itself a uniq 4 letter code
    def createUniqueCode
        newCode = self.class.createCode
        self.code = newCode
        self.createUniqueCode if self.class.find_by(code: newCode) #overwrite if code used before
        newCode
    end

    # creates a 4 letter code using capital letters
    def self.createCode 
        (0..3).map { (65 + rand(26)).chr }.join
    end

    def usedQuestions 
        self.rounds.map{ |round| round.question }
    end

    def has_space?
        users.length < 5
    end

    def has_name_already?(user)
        User.all.find_by({room: self, name: user.name})
    end

end
