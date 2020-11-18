require_relative "piece.rb"
require_relative "slidable.rb"

class Queen < Piece
    include Slidable

    def initialize(color, board, pos)
        # def initialize(color=nil, board=nil, pos=nil)
        #@color = color
        #@board = board
        #@pos = pos
        super
        
        
    end

    def symbol
        '♛'.color.colorize(color)
    end

 

    # def move_dirs
  #   # return the directions in which a queen can move
  #   # a queen can move horizontally (across rows and columns) and diagonally
  # end




    


end