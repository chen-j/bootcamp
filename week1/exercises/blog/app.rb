require_relative("lib/blog.rb")
require_relative("lib/post.rb")

blog = Blog.new
blog.add_post Post.new("DRY","22/02/2016","Do not repeat yourself")
blog.add_post Post.new("ABC","22/03/2016","Always be committing")
blog.add_post Post.new("UNK","22/02/2016","This on is still unknown")

blog.publish_front_page
