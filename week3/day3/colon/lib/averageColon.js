function averageColon(numbersString) {
	if (numbersString === undefined){
		return 0;
	} else {
	var arrayNumbers = numbersString.split(/\D/);
	for (var i = 0; i < arrayNumbers.length; i++) {
		arrayNumbers[i] = Number(arrayNumbers[i]);
	};
	var sum = arrayNumbers.reduce(function(a,b){
	 	return a+b;
	});
  var avg = sum/arrayNumbers.length;
	return avg;
	};
};

module.exports = averageColon;
