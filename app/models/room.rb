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

end
