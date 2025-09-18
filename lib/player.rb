class Player
  attr_accessor :name, :symbol
  
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def move(board, position)
    case position
    when '1'
      board.grid[0][0] = @symbol
    when '2'
      board.grid[0][1] = @symbol
    when '3'
      board.grid[0][2] = @symbol
    when '4'
      board.grid[1][0] = @symbol
    when '5'
      board.grid[1][1] = @symbol
    when '6'
      board.grid[1][2] = @symbol
    when '7'
      board.grid[2][0] = @symbol
    when '8'
      board.grid[2][1] = @symbol
    when '9'
      board.grid[2][2] = @symbol
    end
  end
end