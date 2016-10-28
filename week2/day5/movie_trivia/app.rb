require "sinatra"
require "sinatra/reloader"
require "imdb"


get "/" do
	erb :home
end


post "/search_results" do
	the_search = Imdb::Search.new(params[:movie_search])
	movie_search = the_search.movies
	@movies = movie_search.take(9)
	@rand_year_arr = []
	@movies.map do |movie|
		@rand_year_arr << movie.year
	end
	@rand_year = @rand_year_arr.sample
	erb :results
end

post "/check_answer" do
  	if (params[:movie_year]) == (params[:correct_year])
			redirect("http://www.techzim.co.zw")
		else
			redirect("https://ssn.co.zw")
		end
end
