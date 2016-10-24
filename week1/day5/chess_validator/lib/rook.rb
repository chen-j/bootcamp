class Rook < Pieces
    def move_to(dest_x, dest_y)
        if @orig_x.abs == dest_x.abs || @orig_y.abs == dest_y.abs
            puts 'LEGAL'
        else
            puts 'ILLEGAL'
        end
    end
end
