
class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def loser
    @lives == 0
  end

end
