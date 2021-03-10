class Acronym
  def self.abbreviate(some_string)
    string_array = some_string.sub(/-/, ' ').split
    string_array.map do |word|
      word[0].upcase
    end.join
  end
end
