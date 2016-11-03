"use strict"

console.log("");
console.log("START OF PROGRAM");



// fs.readFile("./movies.txt", "utf8", function (error,contentsOfFile) {
// 	if (error){
// 		console.log("error:", error);
// 	}
// 	else {
// 		var moviesArray = contentsOfFile.split("\n");
// 		console.log(moviesArray);
// 	}
// });


//


function after5Seconds () {
	console.log("5 seconds");
}

setTimeout (after5Seconds, 5000);


setTimeout (function () {
	console.log("2 seconds are up");
}, 2000);


var i;
for (i=1;i<=5000; i += 1) {
	console.log(i);
}
console.log("loop is over");

console.log("");
console.log("END OF PROGRAM");
console.log("");
