require_relative("../lib/task.rb")

RSpec.describe Task do
	describe "#task" do

	end

	let :create_task do
		Task.new
	end

	it "Adds a new task to todolist" do
	  expect(the_todolist).to include(task)
	end

	it "Deletes an existing task from todolist" do
		expect(the_todolist).to include(task) == false
	end

end
