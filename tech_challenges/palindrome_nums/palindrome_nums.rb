require 'pry'

class PalindromeNums
  def collect_palindromes
    num_array = (99..100_000).to_a
    collect_array = []
      num_array.each do |num|
        reverse_num = num.to_s.reverse.to_i
        sum = num + reverse_num
        if sum == sum.to_s.reverse.to_i && sum > 1000
          collect_array << num
        end
        if collect_array.length == 25
          break
        end
      end
    collect_array
  end
end
