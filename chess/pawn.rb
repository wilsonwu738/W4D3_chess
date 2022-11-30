require_relative "piece"
class Pawn < Piece
  def initialize(color, board, pos)
    super
  end

  def symbol
    "Pawn"
  end

  def moves
    @board[@pos[0] + 1, @pos[1]] 
  end
end
