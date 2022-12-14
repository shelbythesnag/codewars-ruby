=begin

Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

Examples
pig_it('Pig latin is cool') # igPay atinlay siay oolcay
pig_it('Hello world !')     # elloHay orldway !

Psuedocode:
- determine if word or punctuation
- if punctuation - next (includes space)
- if word - apply pigword
- define pigword 
    - move first letter to the back of the word
    - add 'ay' to the end of the word
return pigword
return join all words + sentence back together


=end
#test 
a = 'Pig latin is cool'
b = 'Hello world !'

def pig_it(text)
    createpigarray(text).join(' ').chomp
end

def createpigarray(text)
    text.split(' ').map!.each do |word|
        if isword(word)
            pigword(word)
        else
            word
        end
    end
end

def isword(value)
    if value.ord > 32 && value.ord <65 
        false
    elsif value.ord > 90 && 97 > value.ord
        false
    elsif value.ord > 122 && 127 > value.ord
        false
    else
        true
    end
end

def pigword(word)
    array = word.split(//)
    firstletter = array.shift(1)
    (array + firstletter + ['ay']).join
end

=begin
better answers
#rotate method

regex
def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end

refactor later
=end