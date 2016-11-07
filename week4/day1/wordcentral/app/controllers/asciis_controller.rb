require 'artii'

class AsciisController < ApplicationController

	def new
		render "new"
	end

	def create
		a = Artii::Base.new
		@user_text = params[:text_to_art][:user_input]
		@artiified = a.asciify(@user_text)
		render "art"
	end

end
