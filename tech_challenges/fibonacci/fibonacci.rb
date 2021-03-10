class Fibonacci
  def fib_sequence(n)
    return 'Your number is too big!' if n > 50
    sequence = [1, 1]
    index = 0
    while sequence.length < n
      next_index = sequence[index] + sequence[index + 1]
      sequence << next_index
      index += 1
    end
    sequence.last
  end
end
