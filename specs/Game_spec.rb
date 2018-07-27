require("minitest/autorun")
require("minitest/rg")

require_relative("../Game.rb")
require_relative("../Player.rb")
require_relative("../HiddenWord.rb")

class PlayerTest < MiniTest::Test

  def setup
    @game = Game.new("Jango","jingo jango")
  end

  def test_make_bad_guess()
    assert_equal(false, @game.is_lost())
    @game.make_guess("x")
    @game.make_guess("x")
    @game.make_guess("x")
    @game.make_guess("x")
    @game.make_guess("x")
    @game.make_guess("x")
    assert_equal(true, @game.is_lost())
  end

  def test_make_bad_guess()
    assert_equal(false, @game.is_won())
    @game.make_guess("j")
    @game.make_guess("i")
    @game.make_guess("n")
    @game.make_guess("g")
    @game.make_guess("o")
    @game.make_guess("a")
    assert_equal(true, @game.is_won())
  end

  def test_is_lost()
    assert_equal(false, @game.is_lost())
  end

  def test_is_won()
    assert_equal(false, @game.is_won())
  end

end
