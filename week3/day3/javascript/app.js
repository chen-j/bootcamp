
var countCountriesFn = require("./lib/count_countries.js");

var countries = ["Puerto Rico","Puerto Rico",
	"USA","USA","USA","USA","USA",
	"Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina",
	"Cuba","Cuba","Cuba","Cuba",
	"Nigeria", "Haiti"]



console.log(countCountriesFn("USA", countries) === 5);
console.log(countCountriesFn("Puerto Rico", countries) === 2);
console.log(countCountriesFn("Cuba", countries) === 4);
console.log(countCountriesFn("Nicaragua", countries) === 1);
console.log(countCountriesFn("Japan", countries) === 0);

// countries = ["Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]

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


// uppercase_countries = countries.map do |a_country|
// 	a_country.upcase
// end
//
var uppercaseCountries = countries.map(function(aCountry){
 return	aCountry.toUpperCase();
});

// puts "COUNTRIES REPRESENTED IN THIS ROOM:"
// puts "-----------------------------------"
console.log("");
console.log("COUNTRIES REPRESENTED IN THIS ROOM:");

// uppercase_countries.each do |a_country|
// 	puts "SOME OF US ARE FROM #{a_country}!!"
// end

uppercaseCountries.forEach(function (aCountry) {
	console.log(`Some of us are from ${aCountry} !!`);
});

// puts ""
console.log("");
