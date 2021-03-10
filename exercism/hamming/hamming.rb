class Hamming
  def self.compute(first, second)
    raise ArgumentError if first.length != second.length

    difference = 0
    first.chars.each_index do |index|
      difference += 1 if first[index] != second[index]
    end
    difference
  end
end
