require_relative 'piece.rb'
require_relative 'stepable.rb'

class Knight < Piece
  include Stepable


  def initialize
    super
  end

  def symbol
    '♞'.colorize(color)
  end

  protected

  def move_diffs
    # return an array of diffs representing where a Knight can step to
    KNIGHT_DIRS = [
        [-2, -1], 
        [-2, +1], 
        [+2, -1], 
        [+2, +1]  
        [-1, -2], 
        [-1, +2], 
        [+1, -2], 
        [+1, +2]  
      ].freeze

      

  end
end