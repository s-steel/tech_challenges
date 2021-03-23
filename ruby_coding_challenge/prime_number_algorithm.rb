require 'prime'

def count_prime_numbers_version_1(array)
  array.count do |item|
    Prime.prime?(item)
  end
end



# def count_prime_numbers_version_1(array)
#   array.count do |item|
#     is_prime(item)
#   end
# end

# def is_prime(item)
#   return false if item == 1
#   (2..(item-1)).each do |item|
#     if item % number == 0
#       return false
#     end
#   end
#   true
# end



# def count_prime_numbers_version_1(array)
#   prime_count = 0
#   for item in array
#     next if item == 1
#     is_prime = true

#     number = item - 1
#     while number > 1
#       if item % number == 0
#         is_prime = false
#         break
#       else
#         number += 1
#       end
#     end

#     if is_prime
#       prime_count += 1
#     end
#   end
#   prime_count
# end