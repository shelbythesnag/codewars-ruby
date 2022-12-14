=begin
Input: 
    - array of integer
Algorithm:
    - if 0, then remove from arr
        - add a counter
    - if != 0, then leave at array[n]
    - arr (removed zeroes) + blank array(counter,0)
Expected Output:

incorrect approach
.each_index do |index| 
        if isgreaterthanzero(arr[index])
            next
        else
            arr.delete_at(index)
            counter +=1
        end
    end
    puts arr
    "counter is #{counter}"

New Approach:
- count number of zeros
- delete zeros from array
- create new array with default value 0, length = number of zeros from previous array
- join 2 arrays together

=end

def moveZeros(arr) 
    counter = arr.count(0)
    arr.delete(0)
    arr + Array.new(counter,0)
end



