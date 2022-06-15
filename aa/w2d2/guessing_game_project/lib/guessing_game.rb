class GuessingGame
    def initialize(min, max)
        @secret_num = rand(min..max)
        @num_attempts = 0
        @game_over = false
    end
    def num_attempts
        @num_attempts
    end
    def game_over?
        @game_over
    end
    def check_num(n)
        @num_attempts += 1
        if @secret_num == n
            @game_over = true
            p "you win"
        else 
            n > @secret_num? (p "too big") : (p "too small")
        end
    end
    def ask_user 
        p "enter a number: "
        check_num(gets.chomp.to_i)
    end
end
