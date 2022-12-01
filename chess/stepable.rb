
module Stepable
  def moves
    moves_arr = []
    
    self.move_diffs.each do |direction|
      new_row,new_col = self.pos
      new_row += dx
      new_col += dy
      new_postion = new_row, new_col 
      if valid_moves.include?(new_postion)
        moves_arr << new_postion
      end
    end
#test push
  end


  private

  def move_diffs
    raise NotImplementedError
  end
end