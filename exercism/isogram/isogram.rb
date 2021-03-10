class Isogram
  def self.isogram?(string)
    new_string = string.downcase.scan(/\w/)
    if new_string.uniq.length == new_string.length
      "Expected true, '#{string}' is an isogram"
    else
      "Expected false, '#{string}' is not an isogram"
    end
  end
end
