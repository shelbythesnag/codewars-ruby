def get_middle(word)
    characters = word.split(//)
    num = word.length
    word.length % 2 == 1 ? characters[(num-1)/2] : characters[(num)/2-1]+characters[num/2]
end

puts get_middle("test")
puts get_middle("testing")
puts get_middle("middle")
puts get_middle("A")
puts get_middle("of")

def get_middle(s)
    s[(s.size-1)/2..s.size/2]
  end