=begin

Write a function that takes in a string of one or more words, and returns the same string, 
strings with five or more letter words reversed (Just like the name of this Kata). 
Strings passed in will consist of only letters and spaces. 
Spaces will be included only when more than one word is present.

Examples:

spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
spinWords( "This is a test") => returns "This is a test" 
spinWords( "This is another test" )=> returns "This is rehtona test"




=end

#examples:
a = "Hey fellow warriors" 
b = "This is a test"
c = "This is another test"

def spin_words(string)
    string
        .split(" ")
        .map!.each {|word| longerthan5(word)}
        .join(" ").chomp
end

def longerthan5(word)
    word.length >= 5 ? word.reverse : word
end

puts spin_words(a)

=begin
good solutions

def spinWords(string)
  string.gsub(/\w{5,}/, &:reverse)
end

=end