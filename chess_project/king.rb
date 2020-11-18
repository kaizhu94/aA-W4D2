require_relative 'piece'
require_relative 'stepable'

class King < Piece
  include Stepable

  def symbol
    '♚'.colorize(color)
  end

  protected

  def move_diffs

    KING_DIRS = [
        [0, -1], # left
        [0, +1], # right
        [-1, 0], # up (vertical)
        [+1, 0]  # down (vertical)
        [-1, -1], # up + left
        [-1, +1], # up + right
        [+1, -1], # down + left
        [+1, +1]  # down + right
      ].freeze
    # return an array of diffs representing where a King can step to
    # [[+x1, +y1], [+x2, +y2], etc]
  end
end