require_relative 'setup'

class Player < Setup
  attr_accessor :name
  attr_reader :lives

  def initialize_player(new_player)
    @name = new_player
    @lives = 3
  end

  def set_name
    puts "What's your name, #{@name}?"
    @name = gets.chomp
    puts "Welcome to the game, #{@name}!"
  end

  def input_answer
    puts "What do you think, #{@name}?"
    @input = gets.chomp
  end

  def correct_answer?
    if @input != @@current_answer.to_s
      puts "So close bestie! But you lost 1 life. :("
      @lives -= 1
    else
      puts "Correctomungo :)"
    end

    if @lives == 0
      @@loser = true
    end
  end

end