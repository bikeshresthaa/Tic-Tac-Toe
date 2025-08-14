class Board
 attr_accessor :grid
  def initialize()
    @grid = [['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9']]
  end

  def draw
    3.times do |i|
      3.times do |j|
        print "#{@grid[i][j]}"   
        print "|" if j != 2
        puts "" if j == 2
      end
      puts "-----" if i != 2
    end
  end

  def winner
    if @grid[0][0] == @grid[0][1] && @grid[0][1] == @grid[0][2]
      return @grid[0][2]
    elsif @grid[1][0] == @grid[1][1] && @grid[1][1] == @grid[1][2]
      return @grid[1][2]
    elsif @grid[2][0] == @grid[2][1] && @grid[2][1] == @grid[2][2]
      return @grid[2][2]
    elsif @grid[0][0] == @grid[1][0] && @grid[1][0] == @grid[2][0]
      return @grid[2][0]
    elsif @grid[0][1] == @grid[1][1] && @grid[1][1] == @grid[2][1]
      return @grid[2][1]
    elsif @grid[0][2] == @grid[1][2] && @grid[1][2] == @grid[2][2]
      return @grid[2][2]
    elsif @grid[0][0] == @grid[1][1] && @grid[1][1] == @grid[2][2]
      return @grid[2][2]
    elsif @grid[0][2] == @grid[1][1] && @grid[1][1] == @grid[2][0]
      return @grid[2][0]
    else
      return '0'

    end
  end
end


