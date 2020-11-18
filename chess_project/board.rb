require_relative "piece.rb"
class Board

    def initialize
        @board = Array.new(8){Array.new(8, Piece.new("_"))}
        # @board[1].each { |ele| ele = :X }#Piece.new}
        @board.each_with_index do |row, row_idx|
            row.each_with_index do |ele, col_idx|
                # @board[row_idx][col_idx] = :X
            end
        end
        # p @board

        # rook = Piece.new("♖")
        # knight = Piece.new("♘")
        # bishop = Piece.new("♗")
        # king =  Piece.new("♔")
        # queen = Piece.new('♛')
        # pawn = Piece.new("♙")
        # null = Piece.new("_")
         
        # @board[0] = [rook, knight, bishop, king, queen, bishop, knight, rook]
        # @board[7] = [rook, knight, bishop, king, queen, bishop, knight, rook]
        # @board[1] = [pawn] * 8
        # @board[6] = [pawn] * 8
        # (2..5).each do |row|
        #     @board[row] = [null] * 8
        # end
        render
    end

    def render 
        @board.each{|row| puts row.join(" ")}
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
        if  color == self[start_pos].color && self[end_pos].color == "_"
            self[end_pos] = self[start_pos]
            self[start_pos] = Piece.new("_")
        else
            raise "Not Valid Move!"
        end
        render
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