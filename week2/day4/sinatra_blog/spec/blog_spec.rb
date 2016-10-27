require_relative ("../lib/blog.rb")

RSpect.describe Blog do
	before(:each) do
		@blog = Blog.new()
	end

	it ("#Posts returns list pf posts") do
		expect(@blog.posts).to
	end
	
end
