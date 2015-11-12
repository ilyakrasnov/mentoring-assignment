class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
list_node.inspect
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
    # IMPLEMENT ME!
    updated_stack = LinkedListNode.new(element.value, @data)
    @data = updated_stack
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return it to the user
  def pop
    item_to_pop = @data.nil? ? nil : @data.value
    @data = @data.nil? ? LinkedListNode.new(nil) : @data.next_node
    item_to_pop
  end
end

def reverse_list(list)
    stack = Stack.new
    revlist = nil

    while list
      puts stack.pop
      list = list.next_node
    end

    while stack.data
      revlist = LinkedListNode.new(stack.pop, revlist)
    end

    revlist
    # ADD CODE HERE
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)
puts revlist.inspect
print_values(revlist)

