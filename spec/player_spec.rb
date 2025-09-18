require_relative '../lib/player'
require_relative '../lib/board'


describe Player do
  let(:player) { described_class.new("Alice", 'X') }
  let(:board) { Board.new }

  describe "#move" do
    it "places symbol on given position" do
      player.move(board, '1')
      grid_symbol = board.grid[0][0]
      expect(grid_symbol).to eq('X')
    end

    it "does not override the symbol" do
      board.grid[0][0] = 'O'
      player.move(board, '1')
      grid_symbol = board.grid[0][0]
      expect(grid_symbol).to eq('O')
    end
  end
end