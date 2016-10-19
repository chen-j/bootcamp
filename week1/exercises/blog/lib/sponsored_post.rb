require 'colorize'

class SponsoredPost < Post

  def display_blog_post
    puts ""
    puts "***********#{@title}************".colorize(:blue)
    puts "******************"
    puts @text
    puts "--------------------"
    puts ""

  end

end
