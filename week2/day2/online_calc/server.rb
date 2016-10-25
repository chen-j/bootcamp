# server.rb
require "sinatra"


get "/" do
	erb(:home)
end


#---------------------------
#--------- ADD --------------
#----------------------------
get "/add" do
  erb(:add)
end

post "/calculate_add" do
	first = params[:first_number].to_f
 	second = params[:second_number].to_f
	result = first + second
 	@result ="The addition of #{first} and #{second} is #{result}"
	erb(:result)
end

#---------------------------
#--------- ADD --------------
#----------------------------

get "/subtract" do
  erb(:subtract)
end

post "/calculate_subtract" do
	first = params[:first_number].to_f
 	second = params[:second_number].to_f
	result = first - second
 	@result ="The subtraction of #{first} and #{second} is #{result}"
	erb(:result)
end


#---------------------------
#--------- ADD --------------
#----------------------------

get "/multiply" do
  erb(:multiply)
end

post "/calculate_multiply" do
	first = params[:first_number].to_f
 	second = params[:second_number].to_f
	result = first * second
 	@result = "Multiplication of #{first} and #{second} is #{result}"
	erb(:result)
end


#---------------------------
#--------- ADD --------------
#----------------------------


get "/divide" do
  erb(:divide)
end

post "/calculate_divide" do
	first = params[:first_number].to_f
 	second = params[:second_number].to_f
	result = first / second
 	@result = "Division of #{first} and #{second} is #{result}"
	erb(:result)
end
