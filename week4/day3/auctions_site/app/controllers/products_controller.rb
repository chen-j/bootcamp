class ProductsController < ApplicationController

	def index
		@my_user = User.find(params[:user_id])
		@user_products = @my_user.products
	end

	def new
		@my_user = User.find(params[:user_id])
		@new_product = @my_user.products.new
		render "new"
	end

	def create
		@my_user = User.find(params[:user_id])
		@new_product = Product.create(
					:name => params[:product][:name],
					:price => params[:product][:price],
					:user => @my_user)
		redirect_to "/"
	end

	def all
		@products = Product.all
		render "all"
	end

	def details
		@product = Product.find(params[:id])
		render "details"
	end

end
