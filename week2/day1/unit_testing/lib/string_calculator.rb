class StringCalculator
    def add(string = '')
        string_arr = string.gsub(/\D/,",").split(',')
        string_arr.map!(&:to_i)
        sum_array = string_arr.reduce(:+)
        if sum_array.nil?
            0
        else
            sum_array
        end
    end
end
