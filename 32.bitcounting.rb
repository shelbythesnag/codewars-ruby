=begin
Write a function that takes an integer as input, 
and returns the number of bits that are equal to one in the binary representation of that number. 
You can guarantee that input is non-negative.

Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case

=begin
Input:
- transformd decimal to binary
- count number of instance 1 appears
return count

=end
Option 1:
def count_bits(n)
    n.to_s(2).count('1')
end

Option 2:
def count_bits(n)
    binary_array = tobinary(n).count('1')
end

def tobinary(number)
    a = ""
    while number > 0 
        if isodd(number)
            digit = "1"
        else
            digit = "0"
        end
        number = (number/2)
        a.prepend(digit)
        tobinary(number)
    end
    return a
end

def isodd(number)
    number % 2 == 1? true : false
end

puts count_bits(10)
puts count_bits(1234)