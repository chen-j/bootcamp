# server.rb
require "sinatra"


get "/" do
	erb(:home)
end


operations = [{:operation => "addition"},{:operation => "subtraction"},{:operation => "multiplication"},{:operation => "division"}]


post "/result" do
	first = params[:first_number].to_f
 	second = params[:second_number].to_f
	if params[:operation] == "addition"
		result = first + second
		@result ="The addition of #{first} and #{second} is #{result}"
		erb(:result)
	elsif params[:operation] == "subtraction"
		result = first - second
	 	@result ="The subtraction of #{first} and #{second} is #{result}"
		erb(:result)
	elsif params[:operation] == "multiplication"
		result = first * second
	 	@result = "The multiplication of #{first} and #{second} is #{result}"
		erb(:result)
	elsif params[:operation] == "division"
		result = first / second
	 	@result = "The division of #{first} and #{second} is #{result}"
		erb(:result)
	end

end
