# accum("abcd") -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt") -> "C-Ww-Aaa-Tttt"

def accum(s)\
  s.chars.each_with_index.map do |letter, index|
    letter.upcase + (letter.downcase * index)
  end.join('-')
end
# Could do s.chars.map.with_index ...maybe


# likes [] -- must be "no one likes this"
# likes ["Peter"] -- must be "Peter likes this"
# likes ["Jacob", "Alex"] -- must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] -- must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] -- must be "Alex, Jacob and 2 others like this"

def likes(names)
  if names.size == 0
    "no one likes this"
  elsif names.size == 1
    "#{names[0]} likes this"
  elsif names.size == 2
    "#{names[0]} and #{names[1]} like this"
  elsif names.size == 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size-2} others like this"
  end
end


# Kata.getMiddle("test") should return "es"
# Kata.getMiddle("testing") should return "t"
# Kata.getMiddle("middle") should return "dd"
# Kata.getMiddle("A") should return "A"

# def get_middle(s)
#   if s.length.odd?
#     s[(s.length - 1) / 2]
#   else
#     s[((s.length / 2) - 1)..(s.length / 2)]
#   end
# end

def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end

# def get_middle(s)
#   mid = (s.length - 1) / 2
#   s.length.odd? ? s[mid] : s[mid..mid+1]
# end