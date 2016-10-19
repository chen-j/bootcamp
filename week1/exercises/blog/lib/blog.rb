require 'colorize'

class Blog

  def initialize
    @articles = []
    @articles_per_page = 3
    @page_now = 1
  end

  def add_post(post)
    @articles.push(post)
  end

  def publish_front_page

    post_a = 0
    post_z = 2

    blog_posts = @articles.sort do |post_a, post_b|
      post_a.date <=> post_b.date
    end

    blog_posts[post_a..post_z].each do |article|
      article.display_blog_post
    end

    puts "prev < 1 2 3 \n > next".colorize(:blue)
    puts "You are on page #{@page_now}".colorize(:red)

    user_input = nil
    while user_input != "exit"
          user_input = gets.chomp
    if user_input == "next"
      system "clear"
      @page_now += 1
      post_a += @articles_per_page
      post_z += @articles_per_page
      blog_posts[post_a..post_z].each do |article|
        article.display_blog_post
      end
      puts "prev < 1 2 3 \n > next".colorize(:blue)
      puts "You are on page #{@page_now}".colorize(:red)

    elsif user_input == "prev"
      system "clear"
      @page_now -= 1
      post_a -= @articles_per_page
      post_z -= @articles_per_page
      blog_posts[post_a..post_z].each do |article|
        article.display_blog_post
      end
      puts "prev < 1 2 3 \n > next".colorize(:blue)
      puts "You are on page #{@page_now}".colorize(:red)
    end
  end
  end
end
