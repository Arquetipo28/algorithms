# Given the head of a singly linked list, reverse the list,
# and return the reversed list.

def reverse_linked_list_v1(linked_list)
  reversed_list = []
  linked_list.length.times do |i|
    reversed_list << linked_list[-(i + 1)]
  end
  reversed_list
end

def reverse_linked_list_v2(linked_list)
  reversed_list = []
  for i in 1..(linked_list.length)
    reversed_list << linked_list[-i]
  end
  reversed_list
end

def reverse_linked_list_v3(linked_list)
  reversed_list = []
  linked_list.length.times do |_i|
    reversed_list << linked_list.pop
  end
  reversed_list
end

head = [1,2,3,4,5]

reversed_linked_list = reverse_linked_list_v3(head)
