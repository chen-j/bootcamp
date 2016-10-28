require "bundler/setup"
require "sinatra"
require "sinatra/reloader"
require "imdb"


get "/" do
	erb :home
end


post "/search_results" do
	the_search = Imdb::Search.new(params[:movie_search])
	movie_search = the_search.movies.take(15)
	movie_p_search = movie_search.select { |movie| movie.poster != nil }
	@movies = movie_p_search.take(9)
	@rand_year_arr = []
	@movies.map do |movie|
		@rand_year_arr << movie.year
	end
	@rand_year = @rand_year_arr.sample
	erb :results
end

post "/check_answer" do
  	if (params[:movie_year]) == (params[:correct_year])
			"You got it"
		else
			"NOPE!!"
		end
end
