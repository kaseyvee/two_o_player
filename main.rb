require_relative 'player'

# game1 = Game.new()
# game1.initialize_game

# player1 = Player.new()
# player1.initialize_player("player 1")
# player1.set_name

# player2 = Player.new()
# player2.initialize_player("player 2")
# player2.set_name

# game1.new_round

# game1.get_question

# player1.input_answer
# player1.correct_answer?

# player2.input_answer
# player2.correct_answer?

# game1.new_round

class Loop < Player
  def play
    game1 = Game.new()
    game1.initialize_game

    player1 = Player.new()
    player1.initialize_player("player 1")
    player1.set_name

    player2 = Player.new()
    player2.initialize_player("player 2")
    player2.set_name

    while @@loser == false
      game1.new_round
      game1.get_question
      player1.input_answer
      player1.correct_answer?

      game1.new_round
      game1.get_question
      player2.input_answer
      player2.correct_answer?

      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    end

    if player1.lives == 0
      puts "#{player1.name} is the winner with #{player1.lives} lives left!"
    elsif player2.lives == 0
      puts "#{player1.name} is the winner with #{player1.lives} lives left!"
    end
  end
end

new_loop = Loop.new()
new_loop.play