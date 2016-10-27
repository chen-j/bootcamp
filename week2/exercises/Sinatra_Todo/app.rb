#Inside of server.rb
require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/Task.rb')
require_relative('lib/TodoList.rb')

list = TodoList.new

task_1 = Task.new("Buy Milk")
task_2 = Task.new("Walk the dog")
task_3 = Task.new("Wash the car")

list.add_task(task_1)
list.add_task(task_2)
list.add_task(task_3)


get "/tasks" do
	@todos = list.tasks
	erb(:task_index)
end

get "/new_task" do
	erb(:new_task)
end

post "/create_task" do
	task = Task.new(params[:new_to_do])
	list.add_task(task)
	redirect("/tasks")
end

post "/complete" do
	task_tc = list.find_task_by_id(params[:the_id].to_i)
	task_tc.complete!
	redirect("/tasks")
end

post "/delete" do
	# task_td = list.find_task_by_id(params[:the_id].to_i)
	list.delete_task(params[:the_id].to_i)
	redirect("/tasks")
end
