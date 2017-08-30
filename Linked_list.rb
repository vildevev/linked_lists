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

	# Deletes a node that has the value inputted, if none exist, return false
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

	# Find last node in list, returns the node
	def find_last 
		current_node = @head
		until current_node.next_node == nil 
			current_node = current_node.next_node
		end 
		current_node
	end 

	# Add node to the end of the list 
	def push(value)
		last_node = find_last
		last_node.next_node = Node.new(value)
	end 

	# Remove last node from the list 
	def pop
		current_node = @head 
		if current_node.next_node == nil 
			@head = nil 
		end 
		until current_node.next_node.next_node == nil 
			current_node = current_node.next_node
		end 
		current_node.next_node = nil 
	end 

end 