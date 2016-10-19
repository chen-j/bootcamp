require_relative("lib/blog.rb")
require_relative("lib/post.rb")
require_relative("lib/sponsored_post.rb")

blog = Blog.new
blog.add_post Post.new("DRY",Time.new(2016, 9, 11),"Do not repeat yourself")
blog.add_post Post.new("ABC",Time.new(1916, 9, 11),"Always be committing")
blog.add_post Post.new("UNK",Time.new(2015, 8, 12),"This on is still unknown")
blog.add_post SponsoredPost.new("IIST",Time.new(2012, 10, 11),"It is very tough")
blog.add_post Post.new("DRY",Time.new(2014, 9, 11),"Do not repeat yourself")
blog.add_post Post.new("ABC",Time.new(2006, 9, 11),"Always be committing")
blog.add_post Post.new("UNK",Time.new(1995, 8, 12),"This on is still unknown")
blog.add_post SponsoredPost.new("IIST",Time.new(2012, 10, 11),"It is very tough")
blog.add_post Post.new("DRY",Time.new(1206, 9, 11),"Do not repeat yourself")
blog.add_post Post.new("ABC",Time.new(2018, 9, 11),"Always be committing")
blog.add_post Post.new("UNK",Time.new(2022, 8, 12),"This on is still unknown")
blog.add_post SponsoredPost.new("IIST",Time.new(2012, 10, 11),"It is very tough")



blog.publish_front_page
