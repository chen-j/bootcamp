var avgColon = require('./lib/averageColon.js');


var numbers = "80:70:90:100";
var numbersTwo = "80&70&90&100";
console.log(avgColon(numbers) === 85);
console.log(avgColon(numbersTwo) === 85);
console.log(avgColon());
