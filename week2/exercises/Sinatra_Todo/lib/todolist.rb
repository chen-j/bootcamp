class TodoList
	attr_accessor :the_todolist

	def initialize
		@the_todolist = []
	end

	def add_task(new_task)
		@the_todolist.push(new_task)
	end

	def delete_task(task_id)
		@the_todolist.delete_if {|the_task| the_task.id == task_id}
	end

	def find_task_by_id(task_id)
		@the_todolist.find {|the_task| the_task.id == task_id}
	end

end
