class Post
  attr_accessor :title, :date, :text
  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end

  def display_blog_post
    puts ""
    puts "Title: #{@title}"
    puts "******************"
    puts @text
    puts "--------------------"
    puts ""
  end

end
