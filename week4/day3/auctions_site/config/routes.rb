Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get "/", to: "users#index"

	get "/new", to: "users#new"

	post "/users", to: "users#create"

	get "/users/:user_id/products", to: "products#index", as: "user_products"

	get "/users/:user_id/products/new", to: "products#new", as: "products_new"

	post "/users/:user_id/products", to: "products#create", as: "products"

	get "/products", to: "products#all"

	get "/products/:id", to: "products#details"


end
