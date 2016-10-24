require_relative("../lib/lexi.rb")

RSpec.describe Lexi do

	let :lexi do
		Lexi.new
	end

	describe "#eat_t" do
	    it "removes every letter t from the input" do
	      expect(lexi.eat_t("great scott!")).to eq("grea sco!")
	    end
		end

	describe "#shazam" do
			it "reverses letters in array words" do
				expect(lexi.shazam(["tesT", "ChenjeT", "AreilT"])).to eq(["se", "ejnehC", "lierA"])
			end
		end

		describe "#oompa" do
			it "keeps words below 4 letters" do
				expect(lexi.oompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
			end
		end

end
