=begin
Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result

If a value is present in b, all of its occurrences must be removed from the other:

array_diff([1,2],[1]) == [2]

Input:
- Array A (base array)
- Array B (subtracting array)
    - any values present in b must be removed from a.
    - so loop through Array B.each do |value|
        array A.delete(value)
    end

methods we can use in our algorithm:


=end

=begin 
the super ruby way.
def array_diff(a, b)
    a - b
end
=end

def array_diff(a,b)
    b.each do |value|
        a.delete(value)
    end
    return a
end

puts array_diff([1,2], [1]).to_s + "*"
puts array_diff([1,2,2], [1]).to_s  + "*"
puts array_diff([1,2,2], [2]).to_s  + "*"
puts array_diff([1,2,2], []).to_s  + "*"
puts array_diff([], [1,2]).to_s  + "*"
puts array_diff([1,2,3], [1,2]).to_s  + "*"