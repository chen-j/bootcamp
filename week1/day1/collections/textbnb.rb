#-----------------------
#------- SETUP ---------
#-----------------------

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

#-----------------------

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

#-----------------------

#ITERATION - Sort by price with average price displayed at the bottom
price_sorted_homes = homes.sort {|a,b| b.price <=> a.price}

#Ask if user wants to sort homes and set answer to a variable called sorted
puts "Do you want to sort homes by Price? (y/n)"
sorted = gets.chomp

#Display houses on Textbnb based on user input
if sorted == "y"
  puts "***********"
  price_sorted_homes.each do |home|
    puts "#{home.name} in #{home.city}"
    puts "Price: $#{home.price} a night"
    puts "______________________________"
  end
else
  puts "***********"
  homes.each do |home|
    puts "#{home.name} in #{home.city}"
    puts "Price: $#{home.price} a night"
    puts "______________________________"
  end
end

if sorted == "y"
  total_prices = price_sorted_homes.reduce(0.0) do |sum, home|
  sum + home.price
end
elsif total_prices = homes.reduce(0.0) do |sum, home|
  sum + home.price
end
end
puts "AVERAGE LISTING PRICE IS $#{avg_price =  total_prices / homes.length}"


#puts avg_price = price_sorted_homes.reduce(:+) / homes.length


#Filter by city based on User input
puts ""
puts ""
puts ""
puts "You want homes in which city?"
filtered_city = gets.chomp

puts ""
puts ""
filtered_homes = homes.select do |home|
  if home.city == filtered_city
    puts "#{home.name} in #{home.city}"
    puts "Price: $#{home.price} a night"
    puts "______________________________"
  end
end

total_filtered_prices = filtered_homes.reduce(0.0) do |sum, home|
  sum + home.price
end


#home_prices = homes.map do |home|
#  home.price
#end

puts avg_filtered_price =  total_filtered_prices / filtered_homes.length}
