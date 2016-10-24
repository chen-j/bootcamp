class Pieces
    attr_accessor(:orig_x, :orig_y, :color)
    def initialize(orig_x, orig_y, color)
        @orig_x = orig_x
        @orig_y = orig_y
        @color = color
    end
end
