
require_relative '../lib/game'

game = Game.new('Ram', 'Shyam')

turn = 0
until game.game_over?(turn)
  player = game.current_player(turn)
  puts game.board.to_s
  print "#{player.name} (#{player.symbol}), enter your move: "
  move = gets.chomp
  if game.play_move(player, move)
    turn += 1
  else
    puts "Invalid move! Try again."
  end
end

puts game.board.to_s
if game.winner_symbol
  winner = game.winner_symbol == 'X' ? game.player1.name : game.player2.name
  puts "#{winner} wins!"
else
  puts "It's a draw!"
end
