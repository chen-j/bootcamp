// countries = ["Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]
var countries = ["Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"];

// puts ""
// puts "Countries represented in this room:"

console.log("");
console.log("Countries represented in this room:");
console.log("-----------------------------------");

// countries.each do |a_country|
// 	puts "Some of us are from #{a_country}"
// end
countries.forEach(function (aCountry) {
	console.log("Some of us are from "+ aCountry + "!!");
});

// puts ""
console.log("");
