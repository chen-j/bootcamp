class Blog
	attr_accessor :blog_posts

	def initialize
		@blog_posts = []
	end

	def add_post(new_post)
		@blog_posts.push(new_post)
	end

	def latest_posts
	  @blog_posts.sort {|a,b| b.date <=> a.date}
	end

end
