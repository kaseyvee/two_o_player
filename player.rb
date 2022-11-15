require_relative 'game'

class Player < Game
  attr_accessor :name
  attr_reader :lives

  def initialize_player(new_player)
    @name = new_player
    @lives = 3
  end

  def set_name
    puts "What's your name, #{@name}?"
    self.name = gets.chomp
    puts "Welcome to the game, #{self.name}!"
  end

  def input_answer
    puts "What do you think, #{@name}?"
    @input = gets.chomp
  end

  def stats
    puts "#{@name} has #{lives}/3 lives."
  end

  def correct_answer?
    if @input != @@current_answer.to_s
      puts "Wrong! You lost 1 life."
      @lives -= 1
    else
      puts "Correctomungo :)"
    end
  end

end