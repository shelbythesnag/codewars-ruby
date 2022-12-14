=begin
- Return the number (count) of vowels in the given string.
- We will consider a, e, i, o, u as vowels for this Kata (but not y).
- The input string will only consist of lower case letters and/or spaces.

Input:
- will only provide lowercase letters or spaces.
- no constraints

Algorithm
define if vowel?(
    if a,e,i,o,u true, else false.

count every true.
)
=end

a = "abracadabra"

def get_count(string)
    voweltally= string.chars.map!.each {|char| isvowel?(char)}.count('vowel')
end

def isvowel?(char)
    char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u' ? 'vowel' : 'consonant'
end

def vowelcounter(array)
    count = 0
    array.each {|label| label == 'vowel' ? count += 1 : next }
    count
end   

puts get_count(a)


=begin
Best answer - using OOP

def getCount(input)
  KataString.new(input).vowels.count
end

class KataString

  VOWELS = ['a', 'e', 'i', 'o', 'u']

  attr_reader :string

  def initialize(string)
    @string = string
  end
  
  def vowels
    string.chars.select { |letter| VOWELS.include?(letter) }
  end

end

=end