require_relative("../lib/fizz_buzzer.rb")

RSpec.describe FizzBuzzer do
	describe "#fizz_buzz" do

		let :the_fzbz do
			FizzBuzzer.new
		end

		it "returns number when given a number" do
			expect(the_fzbz.fizz_buzz(7)).to eq("7")
			expect(the_fzbz.fizz_buzz(91)).to eq("91")
		end

		it "returns Fizz when given a multiple of 3" do
			expect(the_fzbz.fizz_buzz(6)).to eq("Fizz")
			expect(the_fzbz.fizz_buzz(18)).to eq("Fizz")
		end

		it "returns Buzz when given a multiple of 5" do
			expect(the_fzbz.fizz_buzz(10)).to eq("Buzz")
			expect(the_fzbz.fizz_buzz(20)).to eq("Buzz")
		end

		it "returns FizzBuzz when given a multiple of both 3 & 5" do
			expect(the_fzbz.fizz_buzz(15)).to eq("FizzBuzz")
			expect(the_fzbz.fizz_buzz(30)).to eq("FizzBuzz")
		end

	end
end
