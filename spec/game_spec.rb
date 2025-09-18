require_relative '../lib/game'

describe Game do
  let(:game) { described_class.new }
  let(:board) { game.instance_variable_get(:@board) }
  let(:first) { game.instance_variable_get(:@player1) }
  
  describe "#game_over?" do
    it "returns X when first row is all X" do
      game.play_move(first, '1')
      game.play_move(first, '2')
      game.play_move(first, '3')
      game_over = game.game_over?(0)
      expect(game_over).to eq('X')
    end

    it "returns false when game is not over" do
      expect(game.game_over?(8)).to eq(false)
    end
  end
end