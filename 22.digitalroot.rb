=begin
Digital root is the recursive sum of all the digits in a number.

Given n, take the sum of the digits of n. 
If that value has more than one digit, continue reducing in this way until a single-digit number is produced. 
The input will be a non-negative integer.

Examples
    16  -->  1 + 6 = 7
   942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

Input:
- split integer into array.
- sum all integer
- repeat (recursion) until sum all integer is less than 9
=end

#example
a = 16
b = 942
c = 132189
d = 493193

def digital_root(num)
    ss = num.digits.sum
    if ss > 9
        digital_root(ss)
    else
        ss
    end
end

puts split_sum(a)
puts split_sum(b)
puts split_sum(c)
puts split_sum(d)

=begin
Good Answer:
def digital_root(n)
  n < 10 ? n : digital_root(n.digits.sum)
end

condensed version of what I have written - first time writing a recursion formula
=end