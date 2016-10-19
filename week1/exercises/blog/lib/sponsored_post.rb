class SponsoredPost < Post

  def display_blog_post
    puts ""
    puts "***********Title: #{@title}************"
    puts "******************"
    puts @text
    puts "--------------------"
    puts ""

  end

end
