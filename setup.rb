class Setup
  def initialize_setup
    @begin = true
    @@loser = false
    @@current_answer = 0

    puts "Are you bad at basic addition? Let's see :)"
    puts "First to lose all 3 lives probably tried their best! :)"
  end

  def new_round
    if @begin == true
      @begin = false
      puts "Let's get started!"
    end

    puts "----------- NEW TURN -----------"
  end

  def question
    number1 = rand(1...21)
    number2 = rand(1...21)

    @@current_answer = number1 + number2

    puts "What is #{number1} + #{number2}?"
  end
end