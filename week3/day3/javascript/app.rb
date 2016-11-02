def count_countries(country, array)
	counter = 0
	array.each do |each_country|
		if each_country == country
			counter +=1
		end
	end
	counter
end


countries = ["Puerto Rico","Puerto Rico",
	"USA","USA","USA","USA","USA",
	"Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina",
	"Cuba","Cuba","Cuba","Cuba",
	"Nigeria", "Haiti"]


p count_countries("USA", countries) == 5
p count_countries("Puerto Rico", countries) == 2
p count_countries("Cuba", countries) == 4
p count_countries("Nicaragua", countries) == 1
p count_countries("Japan", countries) == 0


puts ""
puts "Countries represented in this room:"

countries.each do |a_country|
	puts "Some of us are from #{a_country}"
end

puts ""


uppercase_countries = countries.map do |a_country|
	a_country.upcase
end

puts "COUNTRIES REPRESENTED IN THIS ROOM:"
puts "-----------------------------------"

uppercase_countries.each do |a_country|
	puts "SOME OF US ARE FROM #{a_country}!!"
end
