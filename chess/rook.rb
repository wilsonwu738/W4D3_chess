require_relative "slideable"

class Rook < Piece
  include Slideable
  def initialize(color, board, pos)
    super
  end

  def symbol
    "Rook"
  end
end