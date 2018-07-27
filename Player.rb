class Player
  attr_reader :name, :lifes
  def initialize(name, lifes)
    @name = name
    @lifes = lifes
  end


  def reduce_life()
    @lifes -= 1
  end
end
