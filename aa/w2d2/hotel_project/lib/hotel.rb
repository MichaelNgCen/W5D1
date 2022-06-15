require_relative "room"

class Hotel
    def initialize(name, h)
        @name = name
        @rooms = Hash.new("")
        h.each do |roomName, capacity|
            @rooms[roomName] = Room.new(capacity)
        end
    end
    def name 
        @name.split(" ").map(&:capitalize).join(" ")
    end
    def rooms 
        @rooms
    end
    def room_exists?(roomName)
       @rooms.has_key?(roomName)
    end
    def check_in(person, roomName)
        self.room_exists?(roomName)?( @rooms[roomName].add_occupant(person)?(p 'check in successful'):(p'sorry, room does not exist')):(puts "sorry, room does not exist")
    end
end
