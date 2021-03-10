require 'pry'

class ArrayFlattener
  def array_flattener(array)
    new_array = []
    array.each do |item|
      if item.instance_of?(Array)
        item = array_flattener(item)
        new_array += item
      else
        new_array << item
      end
    end
    new_array
  end
end
