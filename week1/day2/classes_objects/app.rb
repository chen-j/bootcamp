#app.rb

require_relative("lib/user.rb")
require_relative("lib/car.rb")


first_user = User.new

first_user.login
first_user.greet



first_car = Car.new

first_car.noise
