#for x in 1..100
#  puts x
#end


heroes_array =["Batman", "Green Lantern", "Superman", "Cyborg", "Wonder Woman", "Aquaman"]

heroes_array.each do |hero|
  puts hero.upcase
  puts "Amount of characters: #{hero.length}"
  puts "_______________"
end


classmates = ["Marc","Mary","Sarah"]

classmates.each do |name|
  puts "Good morning #{name}. Happy coding!"
  puts "___________"
end
