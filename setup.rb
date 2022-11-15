class Setup
  @@loser = false
  @@current_answer = 0

  def initialize_setup
    @begin = true
    @@turn = 2

    puts "Are you bad at basic addition? Let's see :)"
    puts "First to lose all 3 lives probably tried their best! :)"
  end

  def new_round
    if @begin == true
      puts "Let's get started!"
    end

    @begin = false

    if @@turn == 1
      @@turn = 2
    else
      @@turn = 1
    end

    puts "----------- NEW TURN -----------"
  end

  def get_question
    number1 = rand(1-9)
    number2 = rand(1-9)

    @@current_answer = number1 + number2

    puts "What is #{number1} + #{number2}?"
  end
end