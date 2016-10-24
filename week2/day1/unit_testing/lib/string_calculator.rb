class StringCalculator
	def add(string = "")
		string_arr = string.split("")
		string_arr.map! do |number|
			number.to_i
		end
		sum_array = string_arr.reduce(:+)
		if sum_array == nil
			0
		else
			sum_array
		end
	end
end
