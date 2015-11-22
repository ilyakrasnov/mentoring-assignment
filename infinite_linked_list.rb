require "./linked_list"

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

print_values(node3)

def infinite_linked_list?(list)
  tortoise = list.next_node
  hare = list.next_node.next_node

  while tortoise && hare && tortoise.next_node
    if tortoise == hare
      puts "LOOP"
      return
    else
      tortoise = tortoise.next_node.next_node
      hare = hare.next_node
    end
  end
  puts "NO LOOP"
end

infinite_linked_list?(node3)
