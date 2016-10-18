#lib/car.rb

class Car
  def initialize (make, year, color, sound)
    @make = make
    @year = year
    @color = color
    @sound = sound
  end

  def manuf
    puts @make
  end

  def noise
    puts @sound
  end

  def paint
    puts @color
  end

  def noise
    puts @sound
  end

end
