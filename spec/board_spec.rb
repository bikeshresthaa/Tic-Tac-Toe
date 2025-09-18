require_relative '../lib/board'

describe Board do
  let(:board) { Board.new }
  describe "#winner" do
    context "when first row is filled with X" do
      it "returns X" do
        board.grid[0] = ['X', 'X', 'X']
        expect(board.winner).to eq('X')
      end
    end

    context "when second column is filled with O" do
      it "returns O" do
        board.grid[0][1] = 'O'
        board.grid[1][1] = 'O'
        board.grid[2][1] = 'O'
        expect(board.winner).to eq('O')
      end
    end

    context "when diagonal contains all X" do
      it "returns X" do
        board.grid[0][0] = 'X'
        board.grid[1][1] = 'X'
        board.grid[2][2] = 'X'
        expect(board.winner).to eq('X')
      end
    end

    context "when it's draw" do
      it "return nil" do
        expect(board.winner).to be_nil
      end
    end
  end
end