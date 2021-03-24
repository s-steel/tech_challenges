
def sum_prime_numbers(array)
  array.select{ |item| is_prime(item) }.reduce(:+)
end



# def sum_prime_numbers(array)
#   sum = 0
#   for item in array
#     sum += item if is_prime(item)
#   end
#   sum
# end


# def is_prime(item)
#   return false if item == 1
#   (2..(item-1)).each do |number|
#     if item % number == 0
#       return false
#     end
#   end
#   true
# end