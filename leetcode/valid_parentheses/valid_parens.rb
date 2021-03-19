require 'pry'

class ValidParens
  
  def is_valid(s)
    parens = {
      '('=> ')',
      '['=> ']',
      '{'=> '}'
    }
    return false if s.length < 2
    index = 0
    while index <= s.length - 1
      if parens[s[index]] == s[index+1]
        s.slice!(index..index+1)
        index += 1
        is_valid(s)
      else
        index += 1
      end
    end
    if s.empty?
      true
    else
      false
    end
  end
end
