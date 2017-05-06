class TodoList

	def initialize
		@items = ["do the dishes", "mow the lawn"]
	end

	def get_items
		@items
	end

	def add_item(item)
		@items << item
	end

	def delete_item(item)
		@items.delete(item)
	end
end

