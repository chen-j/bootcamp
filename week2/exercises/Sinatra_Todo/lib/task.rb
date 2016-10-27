class Task
    attr_reader :content, :id, :created_at, :completed
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
				@created_at = Time.now

        @@current_id += 1
				@completed = false
    end

		def complete?
			 @completed
		end

		def complete!
			 @completed = true
		end

		def make_incomplete!
			@completed = false
		end

		def update_content!(new_content)
			@content = new_content
			@updated_at = Time.now
		end

end
