class TextGeneratorController < ApplicationController

	def new
		render "new"
	end

	def create
		@quotes = ["I dare do all that may become a man; Who dares do more is none. ",
								"Fair is foul, and foul is fair ",
								"Double, double toil and trouble; Fire burn, and cauldron bubble. "]
		@content_type = params[:content]
		@content_count = params[:count].to_i
		@output = []
		if @content_type == "paragraphs"
			i = 0
			while i < @content_count
				@output.push(@quotes.sample)
				i += 1
			end
		elsif @content_type == "words"
			i = 0
			while i < @content_count
				quote = @quotes.sample
				@output.push(quote.split(" ").sample)
				i += 1
			end
		end
			render "results"
	end

end
