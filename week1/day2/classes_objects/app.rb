#app.rb
#application code resides here

require_relative("lib/user.rb")
require_relative("lib/car.rb")


chenje = User.new("Chenje", "chenje@example.com", 26, "African", "male")

# chenje.login
# chenje.greet



nizars_car = Car.new("BMW",2016,"blue","Broom")
nicks_car = Car.new("Porsche",2016,"white","BROOOOOM")


nizars_car.age
nizars_car.manuf
nizars_car.noise
nizars_car.paint

nicks_car.age
nicks_car.manuf
nicks_car.noise
nicks_car.paint
