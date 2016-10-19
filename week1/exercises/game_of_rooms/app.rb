require_relative("lib/room.rb")
require_relative("lib/game.rb")


pos = 0
#rooms = []

game = Game.new
game.add_room(Room.new("Room 1", "E", "W"))
game.add_room(Room.new("Room 2", "E", "W"))
game.add_room(Room.new("Room 3", "E", "W"))
game.add_room(Room.new("Room 4", "E", "W"))
game.add_room(Room.new("Room 5" ,"E", "W"))

puts "You are in #{game.rooms[pos].description}"
puts "Entry of this room is #{game.rooms[pos].entry}"
puts "Exit of this room is #{game.rooms[pos].exit}"


# def move
# user_input = nil
#   while user_input != "#{game.rooms[0].exit}"
#         puts "There is no exit there"
#         puts "Which way? [E,W,S,N]?"
#         user_input = gets.chomp
#       if user_input == "#{game.rooms[0].exit}"
#         @pos += 1
#         puts "You're now in #{game.rooms[1].description}"
#       end
#   end
# end

#move

#print "#{game.rooms[0].description} exit is #{game.rooms[0].exit}"
