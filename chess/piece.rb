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

    def empty?
        return true if self.is_a?(NullPiece)
        false
    end

    def valid_moves  #what is this
        valid = []
        @board.each_with_index do |row, i|
            row.each_with_index do |piece, j|
                position = [i, j]
                if piece.empty? || self.color != piece.color
                    valid << position
                end
            end
        end

    end

    def symbol
        "P"
    end
end

