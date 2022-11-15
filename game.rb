class Game
  attr_accessor :round, :answer

  def initialize
    puts "Are you bad at math? Let's see :)"
    @round = 0
    @turn = 1
  end

  def switch_turn
    if @turn == 1
      @turn = 2
    else
      @turn = 1
    end
  end

  def new_round
    @round += 1
    puts "---------- ROUND #{@round} ----------"
  end

  def get_question
    number1 = rand(1-9)
    number2 = rand(1-9)
    @answer = number1 + number2
    puts "What is #{number1} + #{number2}?"
  end

end