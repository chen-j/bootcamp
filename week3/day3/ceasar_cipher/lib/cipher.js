// def solve_cipher(input)
//   shift_amount = 1
//   plain_text = []
//   input.split('').each do |letter|
//     deciphered = letter.ord - shift_amount
//     plain_text << deciphered.chr
//   end
//
//   plain_text.join('')
// end

function solveCipher(input) {
	var shift = 1;
	var plainText = [];
	input.split('').forEach(function(letter) {
		var deciphered = letter.charCodeAt(0)-shift;
		var eqDeciphered = String.fromCharCode(deciphered);
		plainText.push(eqDeciphered);
	});
	return plainText.join('');
};

console.log(solveCipher('ifmmp'));

//

function ceasarCipher(input, shiftSize) {
    var shift = shiftSize;
    if (shift === undefined) {
        shift = -3;
    };
    var cipherText = [];
    input.split('').forEach(function(letter) {
        if (letter >= "A" && letter <= "Z" || letter >= "a" && letter <= "z") {
            var unciphered = letter.charCodeAt(0) + shift;
            var eqUnciphered = String.fromCharCode(unciphered);
            cipherText.push(eqUnciphered);
        } else if (letter === ' ' || letter === '?' || letter === ',' || letter === '.' || letter === '"') {
            cipherText.push(letter);
        } else {
            cipherText.push(unciphered);
        };
    });
    return cipherText.join('');
};

console.log(ceasarCipher('Et tu, brute?', 6));

// p solve_cipher('ifmmp')

// var cipherArr = input.split('');
// var decipheredArr = cipherArr.forEach(x)
