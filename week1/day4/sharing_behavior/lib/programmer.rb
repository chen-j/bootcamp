class Programmer
  include Payable
  include CaffeineConsumer

  def program
      consume_caffeine
      do_wonderful_things_with_computers
      recieve_salary
  end

  def do_wonderful_things_with_computers
    puts "$oh-my-zsh"
  end
end
