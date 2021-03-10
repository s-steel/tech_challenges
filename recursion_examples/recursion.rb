# In mathematics, the factorial of a non-negative integer is the product of all positive integers less than or equal to n. For example, the factorial of 5 is 120.
# Write a recursive function that calculates the factorial of a number.

def fac(num)
  if num == 0 
    1
  else
    sum = num * fac(num - 1)
  end
end
print fac(4)

# Reverse a string.
# create a function which takes a string of characters and
# recursively calls itself to reverse the string
def rev_str(s)
  if s.empty?
    ''
  else 
    s[-1] + rev_str(s.slice(0..-2))
  end
end

print rev_str('liam')


# Calculate a number to a specific power.
# // create a function which takes a number and an exponent and
# // recursively calls itself to calculate the product


# A palindrome is word/number that reads the same forwards and backwards. Examples include racecar, tacocat, and toot.
# Write a recursive function that determines whether a given input is a palindrome!
# Hint: An empty string AND a letter would technically be considered palindromes in this example.
# // create a function which takes a string
# // and recursively calls itself to determine if the string is palindrome
# // e.g.
# console.log(isPalindrome('racecar'));  // true
# console.log(isPalindrome('a')); //true
# console.log(isPalindrome('library'));  // false
# console.log(isPalindrome('dngojkafnghkoasng'));  // false