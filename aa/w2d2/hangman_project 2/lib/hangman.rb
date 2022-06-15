class Hangman
  attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  def self.random_word
    DICTIONARY.sample
  end
  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end
  def already_attempted?(c)
    @attempted_chars.include?(c)
  end
  def get_matching_indices(char)
    na = [] 
    @secret_word.each_char.with_index do |c, i|
      na << i if char == c
    end 
    na
  end
  def fill_indices(char, arr)
    arr.each do |i|
      @guess_word[i] = char
    end
  end
  def try_guess(char)
    if self.already_attempted?(char)
      p "that has already been attempted"
      return false
    end
    @attempted_chars << char
    matches = self.get_matching_indices(char)
    self.fill_indices(char,matches)
    @remaining_incorrect_guesses -= 1 if matches.empty?
    true
  end
  def ask_user_for_guess
    p 'Enter a char: '
    self.try_guess(gets.chomp)
  end
  def win?
    if @guess_word.join("") == @secret_word
      p "WIN"
      return true
    else 
      return false
    end
  end
  def lose?
    if @remaining_incorrect_guesses == 0 
      p "LOSE"
      return true
    else
      return false
    end
  end
  def game_over?
    if self.win? || self.lose?
      p @secret_word
      return true
    else
      return false
    end
  end
end
