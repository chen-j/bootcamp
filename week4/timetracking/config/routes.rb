Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get "/", to: "site#home"

	get "/projects", to: "projects#index"

	get "/projects/new", to: "projects#new"

	post "/projects", to: "projects#create"

	get "/projects/:id", to: "projects#show", as: "project"

	get "/projects/:project_id/time_entries", to: "time_entries#index", as: "project_time_entries"

	get "/projects/:project_id/time_entries/new", to: "time_entries#new", as: "new_project_time_entry"

	post "/projects/:project_id/time_entries", to: "time_entries#create"

	get "/contact", to: "site#contact"

	get "/say_name/:name", to: "site#say_name"

	get "/calculator", to: "calculator#add_form"

	post "/calculate", to: "calculator#process_addition"

end
