require 'pry'

class ValidParens
  def is_valid(s)
    stack = []
    s.each_char do |char|
      if char == '(' || char == '[' || char == '{'
        stack.push(char)
      elsif char == ')'
        return false if stack.pop != '('
      elsif char == ']'
        return false if stack.pop != '['
      elsif char == '}'
        return false if stack.pop != '{'
      else
        nil
      end
    end
    stack.empty?
  end

  # def is_valid(s)
  #   parens = {
  #     '('=> ')',
  #     '['=> ']',
  #     '{'=> '}'
  #   }
  #   return false if s.length < 2
  #   index = 0
  #   while index <= s.length - 1
  #     if parens[s[index]] == s[index+1]
  #       s.slice!(index..index+1)
  #       index += 1
  #       is_valid(s)
  #     else
  #       index += 1
  #     end
  #   end
  #   if s.empty?
  #     true
  #   else
  #     false
  #   end
  # end

  # def is_valid(s)
  #   stack = []
  
  #   s.each_char do |ch|
  #     case ch
  #     when '(', '{', '['
  #       stack.push(ch)
  #     when ')'
  #       return false if stack.pop != '('
  #     when '}'
  #       return false if stack.pop != '{'
  #     when ']'
  #       return false if stack.pop != '['
  #     else
  #       nil
  #     end
  #   end
  
  #   stack.empty?
  # end
end
