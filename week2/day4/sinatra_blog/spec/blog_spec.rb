require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe Blog do
	before(:each) do
		@blog = Blog.new()
	end

 	describe "#blog_posts" do

	it ("#returns list blog posts") do
		expect(@blog.blog_posts).to eq([])
	end

end

end
