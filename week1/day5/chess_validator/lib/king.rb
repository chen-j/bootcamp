class King < Pieces
    def move_to(dest_x, dest_y)
        if (@orig_x - dest_x).abs == 1 || (@orig_y - dest_y).abs == 1
            puts 'LEGAL'
        else
            puts 'ILLEGAL'
        end
    end
end
