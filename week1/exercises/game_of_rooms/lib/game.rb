class Game
  attr_accessor(:rooms, :pos)
  def initialize
    @rooms = []
    @pos = 0
  end

  def add_room(room)
    @rooms.push(room)
  end  

end
