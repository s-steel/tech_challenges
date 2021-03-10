require 'pry'

class Snail
  def snail_array(matrix)
    new_array = []
    while matrix.length > 0
      new_array << matrix.slice!(0)
      matrix[0..-2].each do |array|
        new_array << array.slice!(-1)
      end

      new_array << matrix.slice!(-1).reverse

      matrix[0..-1].reverse.each do |array|
        new_array << array.slice!(0)
      end
    end
  rescue StandardError
    new_array.flatten
  end
end
