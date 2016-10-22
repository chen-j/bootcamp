class WhitePawn
    attr_accessor(:orig_x, :orig_y, :color)
    def initialize(orig_x, orig_y, color)
      @orig_x = orig_x
      @orig_y = orig_y
      @color = color
      @num_moves = 0
    end

    def move_to(dest_x, dest_y)
        if @orig_y - dest_y < 0
          puts "ILLEGAL"
        elsif @num_moves == 0 && @orig_x.abs == dest_x.abs && @orig_y.abs - dest_y.abs == 2
          puts "LEGAL"
          @num_moves +=1
        elsif @orig_x.abs == dest_x.abs && @orig_y.abs - dest_y.abs == 1
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
      @num_moves = 0
    end

    def move_to(dest_x, dest_y)
        if @orig_y - dest_y > 0
          puts "ILLEGAL"
        elsif @num_moves == 0 && @orig_x.abs == dest_x.abs && @orig_y.abs - dest_y.abs == 2
          puts "LEGAL"
          @num_moves +=1
        elsif @orig_x.abs == dest_x.abs && @orig_y.abs - dest_y.abs == 1
          puts "LEGAL"
        else
          puts "ILLEGAL"
        end
    end
end
