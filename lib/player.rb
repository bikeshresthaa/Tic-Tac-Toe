# frozen_string_literal: true

class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  # Delegate the move to the board
  def move(board, position)
    board.make_move(position, @symbol)
  end
end
