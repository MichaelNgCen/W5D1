class HumanPlayer
    attr_reader :mark

    def initialize(v)
        @mark = v
    end

    def get_position
        puts "Enter 2 numbers representing a position ie.  1,2 "
        pos = gets.chomp.split(' ').map(&:to_i)
        raise 'Enter 2 number, each follow by space' if pos.length != 2
        pos
    end
end