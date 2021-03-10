class Series
  def initialize(string)
    @string = string
  end
  def slices(number_slices)
    if @string.length < number_slices
      raise ArgumentError
    end
    @string.chars.each_cons(number_slices).map(&:join)
  end
end
