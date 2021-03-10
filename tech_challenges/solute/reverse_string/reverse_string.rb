require 'pry'
# s1 = USACanada s2= CanadaUSA return true
# s1 = USCanadaA s2= USACanada return false

class ReverseString
  def rotate_string(s1, s2)
    num_rotation = 1
    return false if s1.length != s2.length

    while num_rotation <= s1.length
      return true if s1.chars.rotate(num_rotation) == s2.chars

      num_rotation += 1
    end
    false
  end
end

# In java:
# (s1+s1).contains(s2)
