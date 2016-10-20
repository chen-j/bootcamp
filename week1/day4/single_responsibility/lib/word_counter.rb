require_relative("authenticator.rb")

class WordCounter
    def initialiaze
      #@words = words
    end

    def word_counter
      if @access == true
        puts "Enter your sentence:"
        sentence = gets.chomp
        sentence_array = @words.split(" ")
        puts "Your sentence has #{sentence_array.length} words"
      end
    end

end
