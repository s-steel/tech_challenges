class Luhn
  def self.valid?(number)
    strip_string = number.delete(' ')
    return false if strip_string.length < 2 || strip_string.match(/[^0-9 ]/)

    integer_array = convert_to_integer_array(strip_string)

    doubled_array = convert_to_doubled_array(integer_array)

    doubled_array.sum % 10 == 0
  end

  private

  def self.convert_to_integer_array(string)
    string_array = string.chars.reverse
    string_array.map do |num|
      num.to_i
    end
  end

  def self.double_number(number)
    doubled = number * 2
    if doubled >= 10
      doubled - 9
    else
      doubled
    end
  end

  def self.convert_to_doubled_array(number_array)
    number_array.map.with_index do |num, index|
      if index.odd?
        double_number(num)
      else
        num
      end
    end
  end
end
