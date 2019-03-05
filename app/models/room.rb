class Room < ApplicationRecord
    has_many :users
    after_initialize :createUniqueCode, if: :new_record?

    def createUniqueCode
        newCode = self.class.createCode
        self.code = newCode
        self.createUniqueCode if self.class.find_by(code: newCode) #overwrite if code used before
        newCode
    end

    def self.createCode 
        (0..3).map { (65 + rand(26)).chr }.join
    end

    def has_space?
        users.length < 6
    end

    def has_name_already?(user)
        User.all.find_by({room: self, name: user.name})
    end

end
