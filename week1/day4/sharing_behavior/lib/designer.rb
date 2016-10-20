class Designer < CaffeineConsumer
  def design_things
    consume_caffeine
    select_typography
    select_colours
  end

  def select_typography
    puts "Roboto is the best"
  end

  def select_colours
    puts "Something royal maybe?"
  end

end
