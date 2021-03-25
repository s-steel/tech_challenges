require 'pry'

class LongestPalindrome
  def longest_palindrome(s)
    subs = find_all_substrings(s)
    subs.select { |i| i == i.reverse }.max_by(&:length)
  end

  def find_all_substrings(s)
    (0..s.length).map do |i|
      (i..s.length).map do |j|
        s[i..j]
      end
    end.flatten.uniq
  end
end
