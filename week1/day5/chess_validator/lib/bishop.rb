class Bishop < Pieces
    def move_to(dest_x, dest_y)
        if (@orig_x - dest_x).abs == (@orig_y - dest_y).abs
            puts 'LEGAL'
        else
            puts 'ILLEGAL'
        end
    end
end
