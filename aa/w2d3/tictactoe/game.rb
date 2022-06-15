class Game
    def initialize(m1, m2)
        @player1 = HumanPlayer.new(m1)
        @player2 = HumanPlayer.new(m2)
        @currentPlayer = @player1
        @board = Board.new
    end

    def switch_turn 
        (@currentPlayer == @player1) ? @currentPlayer = @player2 : @currentPlayer = @player1
    end
    
    def play
        while @board.empty_positions?
            @board.print
            ps = @currentPlayer.get_position
            @board.place_mark(ps, @currentPlayer.mark)
            if @board.win?(@currentPlayer.mark)
                return puts @currentPlayer.mark.to_s + " VICTORY"
            else
                switch_turn
            end
        end

        puts "DRAW"
    end
end
