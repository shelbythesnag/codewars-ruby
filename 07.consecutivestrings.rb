=begin
Inputs
- Given a list (array) of strings.
    - if Array [] = then return = []
    - 
- Integer K - represents the number of consecutive concatenation to be applied
    - if K <= 0, return = 0
    - if K > length of array.size = 0
- when given input, we need to.
    - loop through the current array X times and collect each variable into a new array (MAP)
    - K will determine how many individual elements are concatenated together array[n..k].join
    - select the one word with max.length    
=end

def longest_consec(strarr, k)
    if k <= 0
        return ""
    elsif k > strarr.size
        return ""
    else
        concat_array = Array.new
        (strarr.length-(k-1)).times do |n|
                concat_array[n] = strarr[n...n+k].join
        end
        return concat_array.max {|a,b|a.length <=> b.length}
    end
end

#TEST

puts longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)
puts longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1)
puts longest_consec([], 3)
puts longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2)
puts longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2)
puts longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2)
puts longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3)
puts longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15)
puts longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0)