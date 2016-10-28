require "sinatra"

require_relative "lib/blog.rb"
require_relative "lib/post.rb"

blog = Blog.new()
blog.add_post Post.new("The Second Post",Time.new(2008,6,21),"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
blog.add_post Post.new("The Third Post",Time.new(2008,7,21),"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
blog.add_post Post.new("The First Post",Time.new(2008,5,21),"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
blog.add_post Post.new("The Fourth Post",Time.new(2009,7,21),"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")

get "/" do
	@posts = blog.latest_posts
	erb(:home)
end

get "/post_details/:index" do
	@post = blog.latest_posts[params[:index].to_i]
	erb(:post)
end
