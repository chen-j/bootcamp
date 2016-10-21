require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")



# /---------------------------------------------------------
#  ------------------------- ROOK --------------------------
#  ---------------------------------------------------------/

black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")

# puts black_rook_left.move_to(2,7)
# puts black_rook_left.move_to(1,7)
# puts black_rook_left.move_to(1,3)
# puts black_rook_left.move_to(1,2)


black_king = King.new(5, 1, "black")
#puts black_king.move_to(4,2)


black_bishop_left = Bishop.new(2, 1, "black")

puts black_bishop_left.move_to(2,7)
