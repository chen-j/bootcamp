class Pawn < Pieces
    def move_to(dest_x, dest_y)
        if @color == 'white'

            if (@orig_y == 2 && dest_y == 4 && @orig_x == dest_x) || (@orig_x == dest_x && @orig_y - dest_y == -1)
                puts 'LEGAL'
            else
                puts 'ILLEGAL'
            end

        elsif @color == 'black'

            if (@orig_y == 7 && dest_y == 5 && @orig_x == dest_x) || (@orig_x == dest_x && @orig_y - dest_y == 1)
                puts 'LEGAL'
            else
                puts 'ILLEGAL'
            end

       end
   end
end
