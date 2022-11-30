require_relative "stepable"

class Knight
  include Stepable
  def initialize(color, board, pos)
    super
  end

  def symbol
    "Knight"
  end
end
