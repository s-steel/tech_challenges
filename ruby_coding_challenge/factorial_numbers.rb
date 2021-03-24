
def factorial_recursive_v2(num)
  number == 0 ? 1 : num * factorial_recursive_v2(num - 1)
end


# def factorial_recursive(num)
#   return 1 if num == 0
#   return num * factorial_recursive(num - 1)

  # or
  
#   # if num <= 1
#   #   1
#   # else
#   #   num * factorial_numbers(num - 1)
#   # end
# end


# def factorial_v4(num)
#   return 1 if num == 0
#   num.downto(1).reduce(:*)
# end


# def factorial_v3(num)
#   (1..num).reduce(:*)
# end


# def factorial_v2(num)
#   result = num
#   (1..(num-1)).each do |n|
#     result *= n
#   end
#   result
# end


# def factorial_v1(num)
#   result = num
#   while number > 1
#     result *= (num - 1)
#     num = num - 1
#   end
#   result
# end

