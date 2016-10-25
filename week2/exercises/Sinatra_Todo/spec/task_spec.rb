require_relative("../lib/task.rb")
require_relative("../lib/todolist.rb")

RSpec.describe Task do
	describe "#task" do

		before :each do
		@task1 = Task.new("Buy the milk")
		@task2 = Task.new("Get the eggs")
		end

		describe "complete?" do
			it "Checks if status is complete" do
				expect(@task1.complete?).to eq(false)
				expect(@task1.complete?).to eq(false)
			end
		end

		describe "complete!" do
			it "Update task to completed" do
				expect(@task1.complete!).to eq(true)
				expect(@task2.complete!).to eq(true)
			end
		end

		describe "make_incomplete!" do
			it "Resets task to from complete to incomplete" do
				expect(@task1.make_incomplete!).to eq(false)
				expect(@task2.make_incomplete!).to eq(false)
			end
		end

end

end
