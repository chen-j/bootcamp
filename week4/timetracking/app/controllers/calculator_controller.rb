class CalculatorController < ApplicationController
	def add_form
		render "add_form"
	end

	def process_addition
		@number_one = params[:first_num].to_i
		@number_two = params[:second_num].to_i
		@result = @number_two + @number_one
		render "results"
	end
end
