require_relative "slideable"
class Queen
  include Slideable
  def initialize(color, board, pos)
    super
  end

  def symbol
    "Queen"
  end

end