module Slideable

    

  # HORIZONTAL_DIRS stores an array of horizontal directions
     # when a piece moves in a given direction, its row and/or its column should increment by some value
     # ex: A piece starts at position [1, 2] and it moves horizontally to the right
       # its position changes to [1,3]
       # the row increases by 0 and the column increases by 1
       HORIZONTAL_DIRS = [
         [0, -1], # left
         [0, +1], # right
         [-1, 0], # up (vertical)
         [+1, 0]  # down (vertical)
       ].freeze
       # .freeze will cause an object to become non-mutatable 
     
       # DIAGONAL_DIRS stores an array of diagonal directions
       DIAGONAL_DIRS = [
         [+1, -1], # down + left
         [+1, +1]  # down + right 
         [-1, -1], # up + left
         [-1, +1], # up + rigight
       ].freeze
     
     
       def horizontal_dirs
         # getter for HORIZONTAL_DIRS
         HORIZONTAL_DIRS
         # horizontal_positions = []
         # HORIZONTAL_DIRS.each do |dir|
         #     horizontal_positions << [self.pos[0] + dir[0], self.pos[1] + dir[1]]
         # end
         # horizontal_positions
          
       end
     
       def diagonal_dirs
         # getter for DIAGONAL_DIRS
         DIAGONAL_DIRS
         # diagonal_positions = []
         # DIAGONAL_DIRS.each do |dir|
         #     diagonal_positions << [self.pos[0] + dir[0], self.pos[1] + dir[1]]
         # end
         # diagonal_positions
       end
     
     
       # should return an array of places a Piece can move to
       def moves
         # create array to collect moves
         all_dir = horizontal_dirs + diagonal_dirs
         all_moves = []
         # iterate over each of the directions in which a slideable piece can move
 
           # use the Piece subclass' `#move_dirs` method to get this info
           # for each direction, collect all possible moves in that direction
             # and add them to your moves array 
             # (use the `grow_unblocked_moves_in_dir` helper method)
         all_dir.each do |dir|
           dx, dy = dir
           all_moves << grow_unblocked_moves_in_dir(dx, dy) 
         end
 
         # return the final array of moves (containing all possible moves in all directions)
         all_moves
       end
     
     
       private
     
       def move_dirs
         # subclass implements this
         raise NotImplementedError # this only executes if 
       end
     
     
       # this helper method is only responsible for collecting all moves in a given direction
       # the given direction is represented by two args, the combination of a dx and dy
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
 
 
 
 
 
 end