require_relative('lib/rook.rb')
require_relative('lib/king.rb')
require_relative('lib/bishop.rb')
require_relative('lib/knight.rb')
require_relative('lib/queen.rb')
require_relative('lib/pawn.rb')
require_relative('lib/board.rb')
# require_relative("lib/black_pawn.rb")

board = ChessBoard.new

# /---------------------------------------------------------
#  ------------------------- ROOK --------------------------
#  ---------------------------------------------------------/

# black_rook_left = Rook.new(1, 8, "black")
# black_rook_right = Rook.new(8, 8, "black")
# board.place_piece(black_rook_left)
# board.place_piece(black_rook_right)

# white_rook_right = Rook.new(8, 1, "white")

# puts black_rook_left.move_to(2,7)
# puts black_rook_left.move_to(1,7)
# puts black_rook_left.move_to(1,3)
# puts black_rook_left.move_to(1,2)

# black_king = King.new(5, 8, "black")
# white_king = King.new(5, 1, "white")
# board.place_piece(black_king)
# board.place_piece(white_king)

# puts board.can_move?(5, 1, 5, 2)
# p board.chess_board[5][1].can_move?(5, 6 ,1, 2)
# p board.chess_board[5][8]

# black_bishop_left = Bishop.new(5, 4, "black")
# puts black_bishop_left.move_to(3,6)

# black_queen = Queen.new(4, 1, "black")
# puts black_queen.move_to(5,3)

# black_knight_left = Knight.new(2, 1, "black")
#
# puts black_knight_left.move_to(3,3)

black_pawn = Pawn.new(7, 7, 'black')
#
# white_pawn = WhitePawn.new(2, 2, "white")
#
# p white_pawn.move_to(2,3)  #legal
# p white_pawn.move_to(2,4)  #legal
puts black_pawn.move_to(7, 6)  # legal
puts black_pawn.move_to(7, 5)  # legal
#
# p white_pawn.move_to(2,6)  #illegal
# p white_pawn.move_to(2,7)  #illegal
puts black_pawn.move_to(7, 3)	 # illegal
puts black_pawn.move_to(7, 2)  # illegal
