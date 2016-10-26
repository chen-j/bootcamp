require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?

enable(:sessions)

get "/" do
	@drink = session[:beverage]
	erb(:home)
end

get "/save_to_session/:thing" do
	session[:beverage] = params[:thing]
	redirect to("/")
end

get "/hi" do
	erb(:hipage)
end

get "/about" do
	erb(:about)
end

get "/best_pizza" do
	@toppings = ["pepperoni", "sausage", "basil", "spinach","tomato", "onion"]
	erb(:best_pizza)
end
