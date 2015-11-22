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

def infinite_linked_list?(list)
  tortoise = list.next_node
  hare = list.next_node.next_node

  while tortoise && hare && tortoise.next_node
    if tortoise == hare
      puts "A loop has been detected :( " # Change to 'return true' to fit initial requirement
      return
    else
      tortoise = tortoise.next_node.next_node
      hare = hare.next_node
    end
  end
  puts "Your list looks fine :) no loops" # Change to 'return false' to fit initial requirement
end
