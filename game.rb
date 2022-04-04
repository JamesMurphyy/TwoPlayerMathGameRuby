require "./player"
class Game

  def initialize(game)
    @game = game
    @Player1 = Player.new("Player 1")
    @Player2 = Player.new("Player 2")
  end

  def rotate_turns
    @Player1.question
    game_end
    @Player2.question
    game_end
    puts "----- NEW TURN -----"
    rotate_turns
  end

  def stats
    puts "P1: #{@Player1.lives}/3 vs P2: #{@Player1.lives}/3"
  end

  def winner(name)
    puts "#{name} wins with a score of #{name.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end


  def scores
    if @Player1.is_loser?
      puts "#{@Player2.name} wins with a score of #{@Player2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
     elsif @Player2.is_loser?
      puts "#{@Player1.name} wins with a score of #{@Player1.lives}/3"
      
     end
  end

  def start_game
    puts "The game is starting..."
    rotate_turns
  end
end