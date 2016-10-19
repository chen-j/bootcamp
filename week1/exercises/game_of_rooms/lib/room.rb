class Room
  attr_accessor(:description, :exit, :entry)
  def initialize(description,exit,entry)
    @description = description
    @exit = exit
    @entry = entry
  end

  def display_room
    puts ""
    puts "Room: #{@name} has #{@doors}"
    puts ""
  end

  
end
