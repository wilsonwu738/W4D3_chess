require_relative "piece"
require_relative "pawn"
class Board
  attr_accessor :grid
  def initialize
    @grid = Array.new(8) {Array.new(8)}
    populate
  end

  def populate  
    @grid.each_with_index do |row, i|
      if i < 2 || i > 5
        row.each_with_index do |ele, j|
          position = [i, j]
          puts position
          case position
          when position[0] == 1
            self[position] = Pawn.new(:black, self, position)
          when position[0] ==6
            self[position] = Pawn.new(:white, self, position)
          end
        end
        # Piece.new(black, self, )
      end
    end
    
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
    raise "Error" if !valid_position?(start_pos) || !valid_position?(end_pos)
    # raise "Error" if self[start_pos].color == self[end_pos].color  
    if self[end_pos] == nil
      self[end_pos] = self[start_pos]
      self[start_pos] = nil
    else

    end
  end

  def valid_position?(position)
    row, col = position
    return false if row >= @grid.length || col >= @grid.length
    return false if row < 0 || col < 0
    true
  end


end
