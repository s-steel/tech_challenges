require 'pry'

class ResistorColorDuo
  def self.value(color_array)
    colors = { 'black': 0,
               'brown': 1,
               'red': 2,
               'orange': 3,
               'yellow': 4,
               'green': 5,
               'blue': 6,
               'violet': 7,
               'grey': 8,
               'white': 9 }
    first_number = colors[color_array[0].to_sym]
    second_number = colors[color_array[1].to_sym]
    [first_number, second_number].join.to_i
  end
end
