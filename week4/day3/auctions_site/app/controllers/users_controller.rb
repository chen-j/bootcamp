class UsersController < ApplicationController

	def index
		@users = User.all
		render "index"
	end

	def new
		@new_user = User.new
		render "new"
	end

	def create
		@new_user = User.new(
			:name => params[:user][:name],
			:email => params[:user][:email])
		@new_user.save
		redirect_to "/"
	end

end
