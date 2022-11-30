require_relative "piece"
class Board
  attr_accessor :grid
  def initialize
    @grid = Array.new(8) {Array.new(8)}

  end

  def [](position)
    row, col = position
    @grid[row][col]
  end

  def []=(position, val)
    row, col = position
    @grid[row][col] = val
  end
  
  def move_piece(start_pos, end_pos)
    raise "Error" if self[start_pos] == nil
    # raise "Error" if self[start_pos].color == self[end_pos].color  
    if self[end_pos] == nil
      self[end_pos] = self[start_pos]
      self[start_pos] = nil
    else
      

    end
  end


end
