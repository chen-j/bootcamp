class WhitePawn
    attr_accessor(:orig_x, :orig_y, :color)
    def initialize(orig_x, orig_y, color)
      @orig_x = orig_x
      @orig_y = orig_y
      @color = color
    end

		def move_to(dest_x, dest_y)
        if (@orig_y == 2 && dest_y == 4 && @orig_x == dest_x) || (@orig_x == dest_x && @orig_y - dest_y == -1)
          puts "LEGAL"
        else
          puts "ILLEGAL"
        end
    end
end



class BlackPawn
    attr_accessor(:orig_x, :orig_y, :color)
    def initialize(orig_x, orig_y, color)
      @orig_x = orig_x
      @orig_y = orig_y
			@color = color
    end

    def move_to(dest_x, dest_y)
        if (@orig_y == 7 && dest_y == 5 && @orig_x == dest_x) || (@orig_x == dest_x && @orig_y - dest_y == 1)
          puts "LEGAL"
        else
          puts "ILLEGAL"
        end
    end
end
