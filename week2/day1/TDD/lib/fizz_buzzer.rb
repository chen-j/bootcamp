class FizzBuzzer
	def fizz_buzz(number)
		if number % 15 == 0
			"FizzBuzz"
		elsif number % 3 == 0
			"Fizz"
		elsif number % 5 == 0
			"Buzz"
		else
			fzbz = number.to_s
		end
	end
end
