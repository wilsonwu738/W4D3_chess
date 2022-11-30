require_relative "piece"

class NullPiece < Piece
  include Singleton
  
  def initialize
    @color = :red
  end

  def symbol
    "__"
  end

end