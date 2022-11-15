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

    current_player = ''
    waiting_player = ''

    while @@loser == false
      if current_player == player1
        current_player = player2
        waiting_player = player1
      else
        current_player = player1
        waiting_player = player2
      end

      game1.new_round

      game1.question
      current_player.input_answer
      current_player.correct_answer?

      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    end

    puts "#{waiting_player.name} is the winner with a score of #{waiting_player.lives}/3! You'll get them next time, #{current_player.name}!"


    puts "Thanks for playing, all! ✌️"
  end
end