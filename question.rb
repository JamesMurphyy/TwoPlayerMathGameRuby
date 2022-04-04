class Question
  def initialize
  @int1 = rand(1...20)
  @int2 = rand(1...20)
  @sum = @int1 + @int2
  end

  def question_for_player(name)
    puts "#{name}: What does #{@int1} plus #{@int2} equal?"
  end

  def correct_answer?(number)
    @sum == number
  end

end