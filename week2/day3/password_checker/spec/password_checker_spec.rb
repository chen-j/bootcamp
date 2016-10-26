require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker do
	describe "#check_password" do

		let :checker do
			 PasswordChecker.new
		 end

		it "returns true for valid passwords" do
			expect( checker.check_password("chenje@ex.com", "aB76*%Hz#3" )).to eq(true)
		end

		it "returns false for passwords shorter than 8 characters" do
			expect( checker.check_password("chenje@ex.com", "aB76" )).to eq(false)
		end

		it "returns false for passwords without letters" do
			expect( checker.check_password("chenje@ex.com", "6376*%#33" )).to eq(false)
		end

		it "returns false for passwords without numbers" do
			expect( checker.check_password("chenje@ex.com", "aB*%cz#$#" )).to eq(false)
		end

		it "returns false for passwords without symbols" do
			expect( checker.check_password("chenje@ex.com", "aB76cz3" )).to eq(false)
		end

		it "returns false for passwords without uppercase letters" do
			expect( checker.check_password("chenje@ex.com", "a76*%cz#3" )).to eq(false)
		end

		it "returns false for passwords without lowercase letters" do
			expect( checker.check_password("chenje@ex.com", "AB76*%#3" )).to eq(false)
		end

		it "returns false for passwords with email username" do
			expect( checker.check_password("chenje@ex.com", "a76chenjez#3Z" )).to eq(false)
		end

		it "returns false for passwords with email domain" do
			expect( checker.check_password("chenje@ex.com", "aB76*ex%#3" )).to eq(false)
		end

end
end
