require("minitest/autorun")
require("minitest/rg")

require_relative("../HiddenWord.rb")

class PlayerTest < MiniTest::Test

  def setup
    @hiddenword = HiddenWord.new("jingo jango")
  end

  def test_check_guess()
    assert_equal(true, @hiddenword.check_guess("j"))
    assert_equal(false, @hiddenword.check_guess("x"))
  end

  def test_display_word()
    assert_equal("**n****an**", @hiddenword.display_word(["n","a"]))
  end
end
