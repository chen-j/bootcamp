Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get "/", to: "contacts#index"

	get "/contacts/new", to: "contacts#new"

	post "/contacts", to: "contacts#create"

	get "/contacts/:id", to: "contacts#details"

	get "/contacts/fav/:id", to: "contacts#fav"

	get "/favorites", to: "contacts#indexfav"

	get "/search", to: "contacts#search"

end
