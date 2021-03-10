require 'pry'

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807

l1 = [2,4,3]
l2 = [5,6,4]

def add_two_nums(list1, list2)
  x = list_to_array(list1).join.to_i
  y = list_to_array(list2).join.to_i
  z = x + y 
  z.digits.reverse
end

def list_to_array(list)
  node = list
  new_array = []
  while node
    new_array.unshift(node.val)
    node = node.next
  end
  new_array
end


puts add_two_nums(l1, l2)
# should return [7, 0, 8]