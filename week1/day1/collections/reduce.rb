#

#total_lengths = 0

#heroes_array.each  do |hero|
#  total_lengths += hero.length
#end

#puts total_lengths.to_f / heroes_array.length

heroes_array =["Batman", "Green Lantern", "Superman", "Cyborg", "Wonder Woman", "Aquaman"]


total_lengths = heroes_array.reduce(0) do |sum, hero|
  puts "Sum: #{sum}"
  puts "Hero: #{hero.length}"
  puts "Result this round: #{sum + hero.length}"
  puts "________________________"

  sleep 1

  sum + hero.length

end


puts ""
puts "FINAL Result: #{total_lengths}"
puts "AVERAGE: #{total_lengths.to_f / heroes_array.length}"
