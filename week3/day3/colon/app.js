function averageColon(numbersString) {
	var arrayNumbers = numbersString.split(':');
	for (var i = 0; i < arrayNumbers.length; i++) {
		arrayNumbers[i] = +arrayNumbers[i];
	};
	var sum = arrayNumbers.reduce(function(a,b){
	 	return a+b;
	});
  var avg = sum/arrayNumbers.length;
	return avg;
};


var numbers = "80:70:90:100";
console.log(averageColon(numbers) == 85);
