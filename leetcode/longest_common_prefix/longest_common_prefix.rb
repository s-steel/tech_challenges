require 'pry'

class LongestCommonPrefix
  def longest_common_prefix(array_of_strings)
    return '' if array_of_strings.empty?
    min, max = array_of_strings.min, array_of_strings.max
    return '' if min[0] != max[0]
    index = min.size.times do |i|
      break i if min[i] != max[i]
    end
    min[0..index-1]
  end
end
