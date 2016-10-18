class Blog
  def initialize
    @articles = []
  end

  def add_post(post)
    @articles.push(post)
  end

  def publish_front_page
    @articles.each do |article|
      article.blog_post
    end
  end
end
