class Lexi
	def eat_t(sentence)
		sentence.gsub!(/(t|T)/,'')
	end

	def shazam(array)
		 array.map! do |x|
			x.gsub!(/(t|T)/,'')
			x.reverse
		end
	end

	def oompa(array)
		arr = []
		i = 0
		while i < array.length
			if array[i].length < 4
				arr.push(array[i])
			end
			i += 1
		end
		arr

	end

end
