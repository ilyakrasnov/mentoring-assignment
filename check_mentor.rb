require './linked_list'
require './hiring_decision'

# Initialize simple list
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# Original list:
puts "Original list:"
print_values(node3)
puts "-------"

# Reverse list with stack
revlist = reverse_list(node3)
puts "Reverse list with stack:"
print_values(revlist)
puts "-------"

# Reverse list recursively
recursive_revlist = recursive_reverse_list(node3)
puts "Recursive revlist without stack:"
print_values(recursive_revlist)
puts "-------"

# Reinitialize simple list
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# Check for loop
puts "Checking original list for a loop:"
infinite_linked_list?(node3)
puts "-------"

# Add loop and check for loop again
puts "Adding a loop and testing detection:"
node1.next_node = node3
infinite_linked_list?(node3)

prompt_hiring_decision
