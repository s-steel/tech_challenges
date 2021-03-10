require 'pry'

# Given a string s, find the length of the longest substring without repeating characters.
# Example 1:

# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.
# Example 2:

# Input: s = "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
# Example 4:

# Input: s = ""
# Output: 0

# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)
  subset_array = []
  for index in 0..(s.length) do
    subset_array = subset_array + s.chars.combination(index).to_a
  end
  require 'pry', binding.pry
end

length_of_longest_substring('abcabcbb')
