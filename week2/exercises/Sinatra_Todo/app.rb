require 'sinatra'
require 'sinatra/reloader'

require_relative('lib/Task.rb')
require_relative('lib/TodoList.rb')

list = TodoList.new

task_1 = Task.new("Buy Milk")
task_2 = Task.new("Walk the dog")
task_3 = Task.new("Wash the car")

list.add_task(task_1)
list.add_task(task_2)
list.add_task(task_3)

get "/" do
	redirect("/tasks")
end


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
	list.delete_task(params[:the_id].to_i)
	redirect("/tasks")
end
