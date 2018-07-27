require_relative("./Player.rb")
require_relative("./HiddenWord.rb")

class Game
  attr_reader :player, :hiddenword

  def initialize(name, word)
    @hiddenword = hiddenword
    @player = Player.new(name, 6)
    @hiddenword = HiddenWord.new(word)
    @guessed_letters = [" "]
  end

  def make_guess(letter)
    @guessed_letters << letter
    if !@hiddenword.check_guess(letter)
      @player.reduce_life()
      return "Wrong! ",@player.lifes()," lifes left"
    else
      return "Correct! ",@player.lifes()," lifes left"
    end
  end

  def is_lost()
    return @player.lifes() <= 0
  end

  def is_won()
    for l in @hiddenword.word().split("")
      if !@guessed_letters.include? l
        return false
      end
    end
    return true
  end

  def print_hiddenword()
    puts @hiddenword.display_word(@guessed_letters)
  end

end
