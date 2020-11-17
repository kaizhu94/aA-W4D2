require_relative "piece.rb"
class Board

    def initialize
        @board = Array.new(8){Array.new(8, Piece.new)}
        # @board[1].each { |ele| ele = :X }#Piece.new}
        @board.each_with_index do |row, row_idx|
            row.each_with_index do |ele, col_idx|
                # @board[row_idx][col_idx] = :X
            end
        end
        p @board

        rook = Piece.new(:Rook)
        knight = Piece.new(:Knight)
        bishop = Piece.new(:Bishop)
        king =  Piece.new(:King)
        queen = Piece.new(:Queen)
        pawn = Piece.new(:Pawn)
        null = Piece.new("_")
        @board[0] = [rook, knight, bishop, king, queen, bishop, knight, rook]
        @board[7] = [rook, knight, bishop, king, queen, bishop, knight, rook]
        @board[1] = [pawn] * 8
        @board[6] = [pawn] * 8
        (2..5).each do |row|
            @board[row] = [null] * 8
        end

    end

    def [](pos) #[0,1]
        row, col = pos 
        @board[row][col]
    end
    
    def []=(pos, val)
        row, col = pos
        @board[row][col] = val 
    end

    def move_piece(color, start_pos, end_pos)
        if @board[start_pos].color == color && @board[end_pos].color == "_"
            @board[end_pos] = @board[start_pos]
            @board[start_pos] = Piece.new("_")
        end

    end

    def valid_pos?(pos)
        @board[pos].nil?
    end

    def add_piece(piece, pos)
        @board[pos] = piece if valid_pos?(pos)
    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces

    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end
end