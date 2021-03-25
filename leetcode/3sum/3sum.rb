require 'pry'

class ThreeSum
  def three_sum(nums)
    output = []
    for index in 0..nums.length do
      output = output + nums.combination(3).select { |a,b,c| (a+b+c) == 0 }.map { |i| i.sort }
    end
    output.uniq.sort
  end
end
