class Game
  attr_accessor(:rooms, :pos)

  def initialize
    @rooms = []
    @pos = 0
  end

  def add_room(room)
    @rooms.push(room)
  end

  def move
    while pos <= @rooms.length
          #puts "You're in #{rooms[pos].description}"
          puts "Which way? [E,W,S,N]?"
          user_input = gets.chomp
          if pos == 5 && user_input == "#{rooms[pos].exit}"
            puts "You have cracked this game"
          elsif user_input == "#{rooms[pos].exit}"
            @pos += 1
          else
          puts "No way there, try again?"
          end
    end
  end

end
