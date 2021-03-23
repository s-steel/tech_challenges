
def count_prime_number(array)
  arra.count do |item|
    is_prime_number_recursion(item, item - 1)
  end
end

def is_prime_number_recursion(item, number)
  return false if item == 1
  return true if number == 1
  return is_prime_number_recursion(item, number - 1) if item % number != 0
end
