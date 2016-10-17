heroes_array =["Batman", "Green Lantern", "Superman", "Cyborg", "Wonder Woman", "Aquaman"]


#with the .each method
#heroes_array.each do |hero|
#  lowercase_array.push(hero.downcase)
#end


#with the .map method

lowercase_array = heroes_array.map do |hero|
  hero.downcase
end

lengths_array = heroes_array.map do |hero|
  hero.length
end

puts "Original Array"
puts "------------"
puts heroes_array
puts "------------"
puts ""
puts ""
puts "------------"
puts "New Array"
puts lowercase_array
puts "------------"
puts ""
puts ""
puts "Lengths Array"
puts lengths_array
puts "------------"
