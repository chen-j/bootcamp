require_relative("../lib/string_calculator.rb")

RSpec.describe StringCalculator do
	describe "#add" do
	  it "adds two numbers separated by commas" do
			the_calc = StringCalculator.new
			expect(the_calc.add("7,7")).to eq(14)
			expect(the_calc.add("8,4")).to eq(12)
	  end

		it "returns the number for a single number" do
			the_calc = StringCalculator.new
			expect(the_calc.add("6")).to eq(6)
			expect(the_calc.add("3")).to eq(3)
		end

		it "returns 0 for an empty string" do
			the_calc = StringCalculator.new
			expect(the_calc.add("")).to eq(0)
		end

		it "returns 0 when no argument is given" do
			the_calc = StringCalculator.new
			expect(the_calc.add).to eq(0)
		end

		it "adds two numbers separated by $ sign" do
			the_calc = StringCalculator.new
			expect(the_calc.add("7$7")).to eq(14)
			expect(the_calc.add("8$4")).to eq(12)
		end

		it "adds four number separated by commas or $ signs" do
			the_calc = StringCalculator.new
			expect(the_calc.add("7,7,1,2")).to eq(17)
			expect(the_calc.add("7$7$1$2")).to eq(17)
		end

		it "adds multiple digit numbers separated by commas and $" do
			the_calc = StringCalculator.new
			expect(the_calc.add("7$7,1,21")).to eq(36)
		end

		it "add multiple digit numbers separated but any special character or letter" do
			the_calc = StringCalculator.new
			expect(the_calc.add("7&7,1z21")).to eq(36)
			expect(the_calc.add("7%7@1^21")).to eq(36)
		end
	end
end
