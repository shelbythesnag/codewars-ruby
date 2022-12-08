def rot13(string)
    a = string.split(//)
    b = a.map.each {|character| inputwrap(character.ord).chr}
    b.join
end


def inputwrap (num)
    if lowercase(num)
        if plus13(num) > 122
            plus13(num) - 26 
        else 
            plus13(num)
        end
    elsif uppercase(num)
        if plus13(num) > 90
            plus13(num) - 26 
        else 
            plus13(num)
        end
    else
        num
    end
end

def lowercase(num)
    num >= 97 && num <= 122 ? true : false
end

def uppercase(num)
    num >= 65 && num <=90 ? true : false
end

def plus13(num)
    return num + 13
end

=begin
Description
ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet.
Create a function that takes a string and returns the string ciphered with Rot13. 
If there are numbers or special characters included in the string, they should be returned as they are. 
Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

Input:
- if they are any other symbol or number, return the same value
- case sensitive (lower and uppercase) -> create a wrap around the ordinary ASCII values
    - a...z = 97 - 122 (wrap)
    - A..Z = 65 - 90 (wrap)
The best way to apply the wrap would be with modulus? Remainder = 0 - 25 would be a to z.
Algorithm:
- shift the letters by 13

Receive input
turn into number
add 13, if lowercase, wrap around to start
if uppercase wrap around to start
    if symbol or number outside of these ranges, don't wrap
convert back to letter if between ranges.

=end


=begin
alternative answer:

def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

tr -> changes the string over to sometihng else.
A-Z is then replaced by N-ZA-M
a-z is then replaced by n-za-m
- these shortcuts are a by product of understanding what is possible with Ruby.

=end