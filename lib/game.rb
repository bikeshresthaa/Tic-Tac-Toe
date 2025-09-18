# frozen_string_literal: true

require_relative 'player'
require_relative 'board'

class Game
  attr_reader :board, :player1, :player2

  def initialize(player1_name = 'Player 1', player2_name = 'Player 2')
    @board = Board.new
    @player1 = Player.new(player1_name, 'X')
    @player2 = Player.new(player2_name, 'O')
  end

  # Return current player based on turn count
  def current_player(turn)
    turn.even? ? player1 : player2
  end

  # Returns symbol of winner or nil
  def winner_symbol
    board.winner
  end

  # Checks if the game is over (winner or draw)
  def game_over?(turn)
    winner_symbol || board.full?
  end

  # Play a move, return true if valid
  def play_move(player, position)
    player.move(board, position)
  end
end
