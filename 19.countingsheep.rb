=begin
Consider an array/list of sheep where some sheep may be missing from their place. 
We need a function that counts the number of sheep present in the array (true means present).

For example,


The correct answer would be 17.

Hint: Don't forget to check for bad values like null/undefined

example = [true,  true,  true,  false,
    true,  true,  true,  true ,
    true,  false, true,  false,
    true,  false, false, true ,
    true,  true,  true,  true ,
    false, false, true,  true]

Input:
- Array
    - contains true, false, nil or undefined

Algorithm
- if true ? count +=1 : next

=end



def countSheeps(array)
    count = 0
    array.each {|boolean| boolean == true ? count += 1 : next}
    count
end


=begin
better answers:
def countSheeps array
    array.count(true)
end

=end