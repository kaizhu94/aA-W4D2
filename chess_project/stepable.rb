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
      array = move_diffs
      final_moves = []
      array.each do |direction|
        final_moves << grow_unblocked_moves_in_dir(direction[0], direction[1])
      end
      # create array to collect moves
  
      # iterate through each of the piece's possible move_diffs
        # for each move_diff, increment the piece's position to generate a new position
        # add the new position to the moves array if it is:
          # on the board and empty
          # OR on the board and contains a piece of the opposite color
  
      # return the final array of moves
      final_moves
    end
  
    private

    def grow_unblocked_moves_in_dir(dx, dy) 
      # create an array to collect moves
      all_moves = []
      # get the piece's current row and current column
      current_pos = self.pos
      # in a loop:
        # continually increment the piece's current row and current column to generate a new position
        # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
        # if the new position is empty, the piece can move here, so add the new position to the moves array
        # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece), so add the new position to the moves array
          # but, the piece cannot continue to move past this piece, so stop looping
        # if the new position is occupied with a piece of the same color, stop looping
      while current_pos[0] >=0 && current_pos[0] <8 && current_pos[1] >=0 && current_pos[1] <8
        current_pos = [current_pos[0] + dx, current_pos[1] + dy]
        if self.board[current_pos] == null
          all_moves << current_pos
        elsif self.board[current_pos].color != self.color
          all_moves << current_pos
          break
        elsif self.board[current_pos].color == self.color
          break
        end
      end
      # return the final moves array
      all_moves
    end
  
    def move_diffs

    
      # subclass implements this
      raise NotImplementedError
    end
  end
  
  
  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!