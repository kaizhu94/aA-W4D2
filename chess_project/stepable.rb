module Stepable

    # HORIZONTAL_DIRS stores an array of horizontal directions
    # when a piece moves in a given direction, its row and/or its column should increment by some value
    # ex: A piece starts at position [1, 2] and it moves horizontally to the right
      # its position changes to [1,3]
      # the row increases by 0 and the column increases by 1
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
      # .freeze will cause an object to become non-mutatable 
    
      # DIAGONAL_DIRS stores an array of diagonal directions
      KNIGHT_DIRS = [
        [-2, -1], # up + left
        [-2, +1], # up + right
        [+2, -1], # down + left
        [+2, +1]  # down + right
        [-1, -1], # up + left
        [-1, +1], # up + right
        [+1, -1], # down + left
        [+1, +1]  # down + right
      ].freeze


    def moves
      # create array to collect moves
  
      # iterate through each of the piece's possible move_diffs
        # for each move_diff, increment the piece's position to generate a new position
        # add the new position to the moves array if it is:
          # on the board and empty
          # OR on the board and contains a piece of the opposite color
  
      # return the final array of moves
    end
  
    private
  
    def move_diffs
      # subclass implements this
      raise NotImplementedError
    end
  end
  
  
  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!