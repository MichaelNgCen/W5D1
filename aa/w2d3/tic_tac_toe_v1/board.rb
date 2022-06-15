class board 
    def initialize
        @grid = Array.new(3) {Array.new(3) _ }
    end
    def valid?(position) 
        position[0] && position[1] <= 3
    end
    def empty?(position)
        self[position] == _
    end
    def place_mark(position,mark)
        if !@valid?(position) || !@empty?(position)
            raise
        else
            self[position] = mark
        end 
    end

end