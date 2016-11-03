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
function ceasarCipher(input, shiftSize) {
    var shift = shiftSize;
    if (shift === undefined) {
        shift = -3;
    };
    var cipherText = [];
    input.split('').forEach(function(letter) {
        var isUpperCase = letter >= "A" && letter <= "Z";
        var isLowerCase = letter >= "a" && letter <= "z";

        if (isUpperCase || isLowerCase) {
            var unciphered = letter.charCodeAt(0) + shift;
            if ((isUpperCase && unciphered > "Z".charCodeAt(0)) || (isLowerCase && unciphered > "z".charCodeAt(0))) {
            var overFlow = unciphered - 26;
            var eqUncipheredOver = String.fromCharCode(overFlow);
               cipherText.push(eqUncipheredOver);
               } else if ((isUpperCase && unciphered < "A".charCodeAt(0)) || (isLowerCase && unciphered < "a".charCodeAt(0))) {
                var underFlow = 26 - unciphered;
                var eqUncipheredUnder = String.fromCharCode(underFlow);
                cipherText.push(eqUncipheredUnder);
                } else {
                var eqUnciphered = String.fromCharCode(unciphered);
                cipherText.push(eqUnciphered);
                };
        } else if (letter < "A" || (letter > "Z" && letter < "a") || letter > "z") {
            cipherText.push(letter);
        } else {
            cipherText.push(unciphered);
        };
    });
    return cipherText.join('');
};

module.exports = ceasarCipher;
