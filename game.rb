class Game
  attr_accessor :round, :answer, :current_answer

  @@loser = false
  @@current_answer = 0

  def initialize_game
    @round = 0
    puts "Are you bad at math? Let's see :)"
    puts "First to lose all 3 lives is the loser who can't do basic math! :)"
  end

  def new_round
    @round += 1
    if @round == 1
      puts "Let's get started!"
    end
    puts "---------- ROUND #{@round} ----------"
  end

  def get_question
    number1 = rand(1-9)
    number2 = rand(1-9)
    @@current_answer = number1 + number2
    puts "What is #{number1} + #{number2}?"
  end
end