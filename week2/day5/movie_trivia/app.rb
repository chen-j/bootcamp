require "sinatra"
require "sinatra/reloader"
require "imdb"


get "/" do
	erb :home
end


get "/search_results" do
	the_search = Imdb::Search.new(params[:search])
	@movies = the_search.movies
	erb :results
end
