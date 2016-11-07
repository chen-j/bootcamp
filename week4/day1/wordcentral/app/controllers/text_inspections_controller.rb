class TextInspectionsController < ApplicationController
	def new
		render "new"
	end

	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		@time_reading = @word_count * 60/275
		@words = @text.split(" ")
		@frequencies = Hash.new(0)
		@overused = []
		@words.each do |word|
			@frequencies[word] += 1
		end
		@sorted = @frequencies.sort_by{ |word, frequency| -frequency }
		@sorted.each do |x|
			@overused.push(x[0])
		end
		render "results"
	end

end
