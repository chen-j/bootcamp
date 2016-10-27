require_relative("../lib/post.rb")

Rspec.describe Post do
	before(:each) do
		@post1 = Post.new()
		@post2 = Post.new()
	end

	it "#title returns title" do
		expect(@post.title).to
		expect(@post.tile).to

	end

	it "#date returns date" do
		expect(@post.date).to
		expect(@post.date).to

	end

	it "text returns text" do
		expect(@post.content).to
		expect(@post.content).to 
	end

end
