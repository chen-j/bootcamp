class ContactsController < ApplicationController
	def index
		@contacts = Contact.order(name: :asc)
		render "index"
	end

	def new
		render "new"
	end

	def create
		contact = Contact.new(
					:name => params[:contact][:name],
					:address => params[:contact][:address],
					:phone_number => params[:contact][:phone],
					:email => params[:contact][:email])
		contact.save
		redirect_to("/")
	end

	def details
		id = params[:id].to_i
		@contact = Contact.find(id)
		render "details"
	end

	def fav
		id = params[:id].to_i
		@contact = Contact.find(id)
		@contact.favorite = true
		@contact.save
		redirect_to "/"
	end

	def indexfav
		@favcontacts = Contact.where(favorite: true)
		render "indexfav"
	end

	def search
		search_term = params[:search_term]
	  @results = Contact.where("name like ?", "#{search_term}%")
		render "search"
	end

end
