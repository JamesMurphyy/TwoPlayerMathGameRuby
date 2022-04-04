class Game

  def initialize
    @Player1 = Player.new("Player 1")
    @Player2 = Player.new("Player 2")
  end

  def rotate_turns
    @Player1.question
    stats
    scores
    puts "----- NEW TURN -----"
    @Player2.question
    stats
    scores
    puts "----- NEW TURN -----"
    rotate_turns
  end

  def stats
    puts "P1: #{@Player1.lives}/3 vs P2: #{@Player2.lives}/3"
  end

  def winner(name)
    puts "#{name.name} wins with a score of #{name.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit
  end

  def scores
    if @Player1.is_loser?
      winner(@Player2)
    elsif @Player2.is_loser?
      winner(@Player1)
    end
  end

  def start_game
    puts "The game is starting..."
    rotate_turns
  end
end