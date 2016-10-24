class Knight < Pieces
    # attr_accessor(:orig_x, :orig_y, :color)
    # def initialize(orig_x, orig_y, color)
    #     @orig_x = orig_x
    #     @orig_y = orig_y
    #     @color = color
    # end

    def move_to(dest_x, dest_y)
        if (@orig_x - dest_x).abs == 2 * (@orig_y - dest_y).abs || (@orig_y - dest_y).abs == 2 * (@orig_x - dest_x).abs
            puts 'LEGAL'
        else
            puts 'ILLEGAL'
        end
    end
end
