require 'pry'

class ThreeSum
  def three_sum(nums)
    output = []
    for index in 0..nums.length do
      output = output + nums.combination(3).to_a
    end
    all_sums = output.select { |i| i.sum == 0 && i.length == 3 }
    all_sums.map { |i| i.sort }.uniq.sort
  end
end
