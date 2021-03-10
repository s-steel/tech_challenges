class Phrase
  def initialize(words)
    @words = words
  end

  def word_count
    counts = Hash.new{ |h,k| h[k] = 0 }
    get_words.each do |word|
      counts[word] += 1
    end
    counts
  end

  private

  def get_words
    @words.downcase.scan(/\b[\w']+\b/)
  end
end
