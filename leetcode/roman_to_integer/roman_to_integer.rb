require 'pry'

# 1 <= s.length <= 15
# s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
# It is guaranteed that s is a valid roman numeral in the range [1, 3999].

class RomanInteger
  def roman_to_int(string)
    total = 0
    values = map_values(string)
    index = 0
    until (index + 1) > string.length
      begin
        if values[index] < values[index + 1]
          total += (values[index + 1] - values[index])
          index += 2
        else
          total += values[index]
          index += 1
        end
      rescue StandardError
        total += values[index]
        return total
      end
    end
    total
  end

  def map_values(string)
    characters = {
      'M' => 1000,
      'D' => 500,
      'C' => 100,
      'L' => 50,
      'X' => 10,
      'V' => 5,
      'I' => 1
    }
    string.chars.map do |char|
      characters[char]
    end
  end
end
