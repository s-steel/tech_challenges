# write function that checks string is a palidrome 

# returns t or f 

# racecar => true 

def palinodrome?(string)
  string == my_reverse(string)
end

def my_reverse(string)
  new_string = ''
  string.each do |char|
    new_string.prepend(char)
  end
  new_string
end

def my_reverse_recursion(string)
  if string.length < 2
    string
  else
    string[-1] + my_reverse_recursion(string[0..-2])
  end
end

puts palinodrome?('racecar')
puts palinodrome?('fgsdag')


# staircase n steps
# walking up you can either take one or two steps up
# how many destinct paths can you take 


# n = 1
# 1
# return 1

# n = 2
# 1,1
# 2
# return 2

# n = 3
# 1,1,1
# 1,2
# 2,1
# return 3

# # n = 4
# # 1,1,1,1
# # 1,1,2
# # 1,2,1
# # 2,1,1
# # 2,2
# # returns 5 

# n = 5
# 1,1,1,1,1
# 1,1,1,2
# 1,1,2,1
# 1,2,1,1
# 2,1,1,1
# 2,2,1
# 2,1,2
# 1,2,2
# return 8 

# it returns 1, 2, 3, 5, 8, 13, 21 

def num_steps(n)
  # if n = 1
  #   1
  # elsif n = 2
  #   2
  # elsif n = 3
  #   num_steps(1) + num_steps(2)
  # elsif n = 4
  #   num_steps(2) + num_steps(3)
  # end
  if n < 3
    n
  else
    num_steps(n-2) + num_steps(n-1)
  end
end
# big O = 2^n 


# Homework 
# one step or three steps 
# n = 1
# return 1

# n = 2
# 1,1
# return 1

# n = 3
# 1,1,1
# 3
# return 2

# n = 4
# 1,1,1,1
# 1,3
# 3,1
# return 3

# n = 5
# 1,1,1,1,1
# 1,1,3
# 1,3,1
# 3,1,1
# return 4

# n = 6
# 1,1,1,1,1,1
# 1,1,1,3
# 1,1,3,1
# 1,3,1,1
# 3,1,1,1
# 3,3
# return 6

# n = 7
# 1,1,1,1,1,1,1
# 1,1,1,1,3
# 1,1,1,3,1
# 1,1,3,1,1
# 1,3,1,1,1
# 3,1,1,1,1
# 1,3,3
# 3,1,3
# 3,3,1
# return 9

# n = 8
# 1,1,1,1,1,1,1,1
# 1,1,1,1,1,3
# 1,1,1,1,3,1
# 1,1,1,3,1,1
# 1,1,3,1,1,1
# 1,3,1,1,1,1
# 3,1,1,1,1,1
# 3,3,1,1
# 3,1,3,1
# 3,1,1,3
# 1,3,3,1
# 1,3,1,3
# 1,1,3,3
# return 13

# n = 9
# 1,1,1,1,1,1,1,1,1
# 1,1,1,1,1,1,3
# 1,1,1,1,1,3,1
# 1,1,1,1,3,1,1
# 1,1,1,3,1,1,1
# 1,1,3,1,1,1,1
# 1,3,1,1,1,1,1
# 3,1,1,1,1,1,1
# 3,3,1,1,1
# 3,1,3,1,1
# 3,1,1,3,1
# 3,1,1,1,3
# 1,1,1,3,3
# 1,1,3,1,3
# 1,3,1,1,3
# 1,3,3,1,1
# 1,3,1,3,1
# 1,3,1,1,3
# 1,1,3,1,3
# 1,1,3,3,1
# 3,3,3
# return 21

# 1,2,3,4,5,6,7, 8, 9
# 1,1,2,3,4,6,9,13,21

# What if your stepping ability is arbitrary 