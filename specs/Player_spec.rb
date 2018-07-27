require("minitest/autorun")
require("minitest/rg")

require_relative("../Player.rb")

class PlayerTest < MiniTest::Test

  def setup
    @player = Player.new("Jango", 6)
  end

  def test_reduce_life()
    assert_equal(6,@player.lifes)
    @player.reduce_life()
    assert_equal(5,@player.lifes)
  end
end
