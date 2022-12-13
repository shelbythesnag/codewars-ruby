=begin
The goal of this exercise is to convert a string to a new string;
- where each character in the new string is "(" if that character appears only once in the original string, 
- or ")" if that character appears more than once in the original string. 
- Ignore capitalization when determining if a character is a duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 

=begin
Input:
- not case sensitive (lowercase everything)
- it seems like numbers and symbols are allowable.
- take in input, determine if it's a duplicate or not.
    if duplicate symbol or character -> return ")"
    if unique symbol or character -> return "("
- how? 
    - counter: loop through array
    - create tally Hashmap. default value is nil
    - each time it appears, += 1 to tally

- return string of "()" depending on whether there are duplicates or not.
        - split everything into an array, if duplicate, replace with X, if not replace with Y.
        - array.join


counter = Hash.new{|counter,key| counter[key] = 0}
counter[:key]
puts counter

=end



#test cases
a = "din"
b = "recede"
c = "Success"

def duplicate_encode(word)
    word_as_array = splitword(word)
    char_hash = convertduplicate(counter(word_as_array))
    word_as_array.map!.each do |char|
        char_hash[char]
    end
    return word_as_array.join
end

def splitword(word)
    word.downcase.split(//)
end

def counter(array)
    counter = Hash.new{|counter,key| counter[key] = 0}
    array.each do |char|
        counter[char] += 1
    end
    counter
end

def convertduplicate(hash)
    a = hash
    hash.each_pair do |key,value|
        if value > 1
            hash[key] = ")"
        else 
            hash[key] = "("
        end
    end
end

=begin
best 2 alternative answers:
- shortcuts

def duplicate_encode(word)
  word
      .downcase
      .chars
      .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
      .join
end

- using OOP & classes

def duplicate_encode(word)
  Code.new(word).encode
end

class Code

  def initialize(word)
    @word = word
  end

  def encode
    @codedword = []
    @singular =  "("
    @plural = ")"

    @word.downcase!
    @word.split("").each do | letter |
      if @word.count(letter) > 1
        letter.replace @plural
      else
        letter.replace @singular
      end

      @codedword << letter
    end
    
    return @codedword.join
  end

end

=end