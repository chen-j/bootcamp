class Queen < Pieces
    # attr_accessor(:orig_x, :orig_y, :color)
    # def initialize(orig_x, orig_y, color)
    #     @orig_x = orig_x
    #     @orig_y = orig_y
    #     @color = color
    # end

    def move_to(dest_x, dest_y)
        if (@orig_x - dest_x).abs == (@orig_y - dest_y).abs
            puts 'LEGAL'
        elsif @orig_x.abs == dest_x.abs || @orig_y.abs == dest_y.abs
            puts 'LEGAL'
        else
            puts 'ILLEGAL'
        end
    end
end
