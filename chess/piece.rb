require 'colorize'

class Piece 
    attr_reader :color, :board, :pos
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end
    # @board.validposition
    def to_s
        self.symbol.colorize(@color)
    end

    def valid_moves
    end

    def symbol
        "P"
    end
end

