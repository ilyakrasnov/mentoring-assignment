class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push an item onto the stack
  def push(element)
    updated_stack = LinkedListNode.new(element, @data)
    @data = updated_stack
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return it to the user
  def pop
    top_item = @data.value
    @data =@data.next_node
    top_item
  end
end

def reverse_list(list)
  stack = Stack.new

  while list
    stack.push(list.value)
    list = list.next_node
  end

  stack.data
end

def recursive_reverse_list(list, previous=nil)
  if list.next_node.nil?
    list.next_node = previous
    return list
  else
    next_node = list.next_node
    list.next_node = previous
    recursive_reverse_list(next_node, list)
  end
end

# Initialize test data
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
revlist = reverse_list(node3)
recursive_revlist = recursive_reverse_list(node3)

# Print results
puts "Original list:"
print_values(node3)
puts "-------"
puts "Reverse list with stack:"
print_values(revlist)
puts "-------"
puts "Recursie revlist without stack:"
print_values(recursive_revlist)
