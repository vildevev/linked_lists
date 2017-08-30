require_relative 'Node'

class Linked_list 
	attr_accessor :head

	def initialize(head)
		@head = head
	end 

	# Checks if a given value appears in the list
	def value_exists?(value)
		current_node = @head
		until current_node.value == value 
			return false if current_node.next_node == nil 
			current_node = current_node.next_node
		end 
		true 
	end 

	# Insert a value in an ordered list
	def insert(value)
		current_node = @head 
		if current_node.value >= value 
			@head = Node.new(value, current_node)
		end 
		until current_node.next_node.value =< value 
			break if current_node.next_node == nil 
			current_node = current_node.next_node
		end 
		current_node.next_node = Node.new(value, current_node.next_node)
	end 

	# Deletes a node that has the value inputted
	def delete(value)
		current_node = @head 
		if current_node.value == value 
			@head = current_node.next_node
		end 
		until current_node.next_node.value == value 
			return false if current_node.next_node == nil 
			current_node = current_node.next_node
		end 
		current_node.next_node = current_node.next_node.next_node
	end 

end 