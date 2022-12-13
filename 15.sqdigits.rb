=begin

Welcome. In this kata, you are asked to square every digit of a number and concatenate them.

For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

Note: The function accepts an integer and returns an integer

Input:
- receive num in intger format, turn into string, turn into array.

Algorithm
- square every individual digit
    - seperate each digit as individual values
    - square every value
- concatenate each squared value (NOT ADDITION) (join function)
    - each value should be a string 
    - convert string into integer. convert from str to int

=end

def splitdig(num)
    num.to_s.split(//)
end

def square(num)
    num*num
end

def square_digits(num)
    a = splitdig(num)
    a.collect!.each do |digit|
        square(digit.to_i)
    end
    a.join.to_i
end


#examples:
a = 3212
b = 2112
c = 1111
d = 1234321
e = 0

puts square_digits(a)