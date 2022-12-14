=begin
Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

Examples:

2 inputs
Input 1: total_string
Input 2: ending
    - find ending length
    - is word[-length] = ending
    


solution('abc', 'bc') // returns true
solution('abc', 'd') // returns false

=end

def solution(str, ending)
    str.chars.pop(ending.length).join == ending ? true : false
end

puts solution('abc','d')
puts solution('abc','bc')

