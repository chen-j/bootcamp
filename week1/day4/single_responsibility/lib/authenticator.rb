class Authenticator

  def check_credentials

      puts "Username:"
      username_input = gets.chomp
      puts "Password:"
      password_input = gets.chomp

    if username_input == "chenje" && password_input == "chenje"
      puts "Access granted"
      puts "Enter your sentence:"
      sentence = gets.chomp
      puts "#{sentence.split.size}"
    else
      puts "Invalid username and/or password. Access Denied."
    end

  end

end
