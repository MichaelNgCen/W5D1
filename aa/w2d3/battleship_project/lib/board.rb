class Board
    attr_reader :size
    def self.print_grid(grid)
        grid.each {|r| puts r.join(" ")}
    end
    def initialize(n)
        @grid = Array.new(n){Array.new(n, :N)}
        @size = n * n
    end
    def [](ps)
        r, c = ps
        @grid[r][c]
    end
    def []=(ps, val)
        r, c = ps
        @grid[r][c] = val
    end
    def num_ships
        @grid.flatten.count {|el| el == :S}
    end

    def attack(ps)
        if self[ps]==:S
            self[ps]=:H
            puts "you sunk my battleship!"
            return true
        else
            self[ps]=:X
            return false
        end
    end
    def place_random_ships
        total_ships=@size*0.25
        while self.num_ships<total_ships
            rand_row=rand(0...@grid.length)
            rand_col=rand(0...@grid.length)
            ps=[rand_row,rand_col]
            self[ps]=:S
        end
    end

    def hidden_ships_grid
        @grid.map {|r| r.map {|el| el == :S ? :N : el}}
    end
    def cheat 
        Board.print_grid(@grid)
    end
    def print
        Board.print_grid(self.hidden_ships_grid)
    end
end
