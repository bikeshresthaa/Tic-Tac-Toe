
class Board
  attr_accessor :grid

  def initialize
    # Initialize a 3x3 board numbered 1-9
    @grid = Array.new(3) { |i| Array.new(3) { |j| (i * 3 + j + 1).to_s } }
  end

  # String representation of the board
  def to_s
    @grid.map { |row| row.join(' | ') }.join("\n---+---+---\n")
  end

  # Place a symbol at a position (1-9). Returns true if successful.
  def make_move(position, symbol)
    row, col = (position.to_i - 1).divmod(3)
    return false if @grid[row][col] =~ /[XO]/  

    @grid[row][col] = symbol
    true
  end

  # Return 'X', 'O', or nil if no winner
  def winner
    lines = @grid + @grid.transpose + diagonals
    lines.each do |line|
      return line[0] if line.uniq.size == 1 && %w[X O].include?(line[0])
    end
    nil
  end

  def full?
    @grid.flatten.all? { |cell| %w[X O].include?(cell) }
  end

  private

  def diagonals
    [
      [@grid[0][0], @grid[1][1], @grid[2][2]],
      [@grid[0][2], @grid[1][1], @grid[2][0]]
    ]
  end
end
