
module Slideable
  HORIZONTAL_DIRS = [[0, -1], [0, 1], [1,0], [-1,0]].freeze
  DIAGONAL_DIRS = [[1, -1], [1, 1], [-1, -1], [-1, 1]].freeze

  def horizontal_dirs 
    HORIZONTAL_DIRS
  end

  def diagonal_dirs 
    DIAGONAL_DIRS
  end

  def moves
    moves_arr = []
    self.move_dirs.each do |direction|
      moves_arr << grow_unblocked_moves_in_dir(direction)
    end

    moves_arr
  end


  private

  def move_dirs
    raise NotImplementedError
  end

  def grow_unblocked_moves_in_dir(dx, dy)

  end
  




end

