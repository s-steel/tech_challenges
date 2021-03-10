require 'pry'
# @param {Integer} n
# @param {Integer} k
# @return {Integer}

n = 7
k = 2

def kth_factor(n, k)
  factors = []
  i = 1
  until i > n
      if n % i == 0
          factors << i
      end
      i += 1
  end
  if factors.length < k
      return -1 
  else
      factors[k-1]
  end
end

puts kth_factor(n,k)