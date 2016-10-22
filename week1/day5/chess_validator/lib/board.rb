class ChessBoard
    attr_accessor :chess_board
    def initialize
        @chess_board = [nil, [], [], [], [], [], [], [], []]
        #                0    1   2   3   4   5  6   7   8
    end

    def place_piece(piece)
        @chess_board[piece.orig_x][piece.orig_y] = piece
    end

    def move_to(orig_x, dest_x, orig_y, dest_y)
    end
end
