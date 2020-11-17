require_relative "board.rb"
class Piece
    attr_reader :color, :pos
    def initialize(color=nil, board=nil, pos=nil)
        @color = color
        @board = board
        @pos = pos
    end

    def inspect
        self.to_s
    end

    def to_s
        @color.to_s
    end

    def empty?
        @board[pos] == nil
    end

    def valid_moves

    end

    def pos=(val)

    end

    private

    def move_into_check?(end_pos)

    end

end