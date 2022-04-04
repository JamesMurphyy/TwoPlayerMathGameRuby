
class Player
 attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_loser?
    @lives == 0
  end

  #ask question for user with their name
  def question
    p = Question.new
    p.question_for_player(name)
    print "> "
    @input =  $stdin.gets.chomp #using $stdin because not planning on using ARGV
    if p.correct_answer?(@input.to_i)
      puts "YES! You are correct."
    else 
      puts "Seriously? No!"
      lose_life
    end
  end



end
