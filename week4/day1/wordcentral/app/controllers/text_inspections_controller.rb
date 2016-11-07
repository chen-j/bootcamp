class TextInspectionsController < ApplicationController
	def new
		render "new"
	end

	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		@time_reading = @word_count * 60/275

		render "results"
	end

end
