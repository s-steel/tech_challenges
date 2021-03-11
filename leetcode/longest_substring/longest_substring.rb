require 'pry'

# Given a string s, find the length of the longest substring without repeating characters.
# Input = string
# Output = int

class LongestSubstring
  def length_of_longest_substring(string)
    subsets = find_all_subsets(string)
    longest = 0
    subsets.each do |set|
      if unique?(set) == true && set.length > longest
        longest = set.length
      end
    end
    longest
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

  def find_all_subsets(string)
    indices = (0...string.length).to_a
    indices.product(indices).reject{|i,j| i > j}.map{|i,j| string[i..j]}.uniq
  end
end
