class ChessBoard
    attr_accessor :chess_board
    def initialize
        @chess_board = [nil, [], [], [], [], [], [], [], []]
        #                0    1   2   3   4   5  6   7   8
    end

    def place_piece(piece)
        @chess_board[piece.orig_x][piece.orig_y] = piece
    end

    def can_move?(orig_x, orig_y, dest_x, dest_y)
        if @chess_board[orig_x, orig_y].nil?
            puts 'No piece to move here'
        elsif dest_x > 8 || dest_y > 8
            puts 'That is beyond the board mate. Stay on the board'
        elsif orig_x == dest_x && orig_y == dest_y
            puts "Now that's not moving, is it?"
        else
            @chess_board[orig_x][orig_y].move_to(dest_x, dest_y)
        end
    end
end
