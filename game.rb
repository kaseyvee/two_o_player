require_relative 'setup'
require_relative 'player'

class Game < Setup
  def play
    game1 = Setup.new()
    game1.initialize_setup

    player1 = Player.new()
    player1.initialize_player("player 1")
    player1.set_name

    player2 = Player.new()
    player2.initialize_player("player 2")
    player2.set_name

    while @@loser == false
      game1.new_round

      if @@turn == 1
        game1.get_question
        player1.input_answer
        player1.correct_answer?
      end

      if @@turn == 2
        game1.get_question
        player2.input_answer
        player2.correct_answer?
      end

      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    end

    if player2.lives == 0
      puts "#{player1.name} is the winner with a score of #{player1.lives}/3!"
    elsif player1.lives == 0
      puts "#{player2.name} is the winner with a score #{player2.lives}/3!"
    end

    puts "Thanks for playing! Byeeeeeeeeee!!!!!!! ✌️"
  end
end