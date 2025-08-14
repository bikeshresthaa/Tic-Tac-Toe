require_relative 'board'
require_relative 'player'


player1 = Player.new('Ram', 'X')
player2 = Player.new('Shyam', 'O')

board = Board.new()
board.draw()

9.times do |i|
  if i.even?
    puts "Enter your move #{player1.name}"
    pos = gets.chomp
    player1.move(board, pos)
    board.draw()
  else
    puts "Enter your move #{player2.name}"
    pos = gets.chomp
    player2.move(board, pos)
    board.draw()
  end

  if i >=4
    winner = board.winner()
    if winner == 'X'
      puts "#{player1.name} wins"
      break
    elsif winner == 'O'
      puts "#{player2.name} wins"
      break
    elsif i == 8 && winner == '0'
      puts "It's a DRAW!!"
      break
    end
  end
end