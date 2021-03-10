require 'pry'
# Input:  set[] = {3, 34, 4, 12, 5, 1}, sum = 9
# Output:  array[]  //There is a subset (4, 5) with sum 9

class SubsetSum
  def subset_sum(array, sum)
    # Assuming you don't want zeros included in returned array
    array.delete_if { |num| num == 0 || num > sum }
    return array if array.sum == sum

    subset_array = []
    for index in 0..(array.length) do
      subset_array = subset_array + array.combination(index).to_a
    end
    return_subsets = sum_all_subsets(subset_array, sum)
    return_subsets(return_subsets)
  end

  private

  def return_subsets(array)
    if array.length <= 1
      array.flatten 
    else
      array
    end
  end

  def sum_all_subsets(subset_array, sum)
    return_subsets = []
    subset_array.each do |array|
      return_subsets << array if array.sum == sum
    end
    return_subsets
  end
end
