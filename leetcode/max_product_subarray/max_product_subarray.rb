require 'pry'

class MaxProductSubarray
  def max_product(nums)
    reverse_nums = nums.reverse
    (1..nums.length-1).each do |x|
      if nums[x-1] != 0
        nums[x] *= nums[x-1]
      end
      if reverse_nums[x-1] != 0
        reverse_nums[x] *= reverse_nums[x-1]
      end
    end
    (nums + reverse_nums).max
  end
end
