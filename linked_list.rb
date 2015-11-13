require "yaml"

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
list_node.inspect.to_yaml
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
  print_values(list)
  print_values(previous)
  #puts previous.inspect

  if list.next_node.nil?
    previous.next_node = nil unless previous.nil?
    list.next_node = previous
    return list
  else
    new = LinkedListNode.new(list.value)
    recursive_reverse_list(list.next_node, new).next_node = previous
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

#print_values(node3)

#puts "-------"

revlist = recursive_reverse_list(node3)
#print_values(revlist)
