class Room < ApplicationRecord
    has_many :games

    after_initialize do |room|
        room.code = room.class.createUniqueCode
    end

    def self.createUniqueCode
        roomCode = self.createCode
        self.createUniqueCode if self.find_by(code: roomCode)
        roomCode
    end

    def self.createCode 
        (0..3).map { (65 + rand(26)).chr }.join
    end

end
