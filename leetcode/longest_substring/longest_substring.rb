require 'pry'

# Given a string s, find the length of the longest substring without repeating characters.
# Input = string 
# Output = int 

class LongestSubstring 
  def longest_substring(string)
  #   subset_array = []
  #   for index in 0..(s.length) do
  #     subset_array = subset_array + s.chars.combination(index).to_a
  #   end
  #   require 'pry', binding.pry
  end

  def unique?(string)
    hash = Hash.new(false)
    string.chars.each do |char|
      if hash[char] == true 
        return false
      else 
        hash[char] = true
      end
    end
    true
  end
end
