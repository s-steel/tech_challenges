class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    @matrix.split('\n')
  end
end
