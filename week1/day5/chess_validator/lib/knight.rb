class Knight < Pieces
    def move_to(dest_x, dest_y)
        if (@orig_x - dest_x).abs == 2 * (@orig_y - dest_y).abs || (@orig_y - dest_y).abs == 2 * (@orig_x - dest_x).abs
            puts 'LEGAL'
        else
            puts 'ILLEGAL'
        end
    end
end
