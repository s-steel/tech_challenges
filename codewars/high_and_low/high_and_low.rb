require 'pry'

class HighLow
  def high_and_low(string)
    int_array = string.split(' ').map do |s|
      s.to_i
    end
    high = int_array.max
    low = int_array.min
    "#{high} #{low}"
  end
end
