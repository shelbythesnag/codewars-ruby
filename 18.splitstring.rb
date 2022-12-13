def solution(str)

end

=begin
Complete the solution so that it splits the string into pairs of two characters. 
If the string contains an odd number of characters: then it should replace the missing second character of the final pair with an underscore ('_').

Examples:

* 'abc' =>  ['ab', 'c_']
* 'abcdef' => ['ab', 'cd', 'ef']

Input:
determine length of the word
- if even do nothing
- if odd add '_' at the end


Algorithm:
- after every second letter, we add a ','
- split string by , and turn into an array.

=end

def solution(string)
    addcomma(add_underscoretoodd(string)).join.split(",")
end

def add_underscoretoodd(string)
    if string.chars.length % 2 == 1
        string + "_"
    else
        return string
    end
end

def addcomma(string)
    a = string.chars
    count = 0
    a.each_index do |num| 
        if withinASCIIrange?(a[num])
            count += 1
                if count == 3
                    a.insert(num,",")
                    count = 0
                else
                    next
                end     
        else
            next
        end
    end
    a
end

#helper function
def withinASCIIrange?(char)
    if char.ord >=41 && char.ord <=90
        true
    elsif char.ord >= 97 && char.ord <=122
        true
    else
        false
    end
end


=begin
REALLY good answers

not sure how they managed to make this insanely efficient
def solution str
  (str + '_').scan /../
end

def solution(str)
    str << "_" if str.length % 2 != 0
    str.chars.each_slice(2).map(&:join)
end

