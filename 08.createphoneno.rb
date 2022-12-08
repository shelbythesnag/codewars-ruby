=begin
Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.
Input:
    - Array:
        -constraints:
            -array must have 10 integers:
            -   array.size == 10
            -   array[n].size = 1
            -   0<=array[n]<=9
Algorithm
    - if all conditions above true, then return puts "("012")"" 345-678"
=end

=begin
def create_phone_number(numbers)
    if arrayelementsizeis1(numbers) && arraysizeis10(numbers) == true
        return "(" + numbers[0..2].join.to_s + ") " + numbers[3..5].join.to_s + "-" + numbers [6..9].join.to_s
    else
        nil
    end
end

def arraysizeis10(array)
    if array.size == 10
        true
    else
        false
    end
end

def arrayelementsizeis1(array)
    istruearray = Array.new
    array.length.times.map do |n|
        if array[n]<10 && array[n]>=0
            istruearray[n] = true
        else
            istruearray[n] = false
        end
    end
    istruearray.uniq.size == 1 ? true : false
end
=end

def create_phone_number(numbers)
    "(%d%d%d) %d%d%d-%d%d%d%d" % numbers
end
#test
puts create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
puts create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
