=begin

Complete the function that

1. accepts two integer arrays of equal length
2. compares the value each member in one array to the corresponding member in the other -> array1[n] - array2[n]
3. squares the absolute value difference between those two values. transform to positive (if negative). square
4. and returns the average of those squared absolute value difference between each member pair.

=end

def solution (arr1, arr2)
    if equallength?(arr1,arr2)
        average(calculatedifference(arr1,arr2))
    else
        false
    end
end

def equallength?(array1,array2)
    array1.size == array2.size ? true : false
end

def calculatedifference(array1,array2)
    difference = Array.new
    array1.each_index do |index|
            difference[index] = (array1[index] - array2[index])
    end
    difference.map!.each {|value| squared(transformpositive(value))}
end

def transformpositive(num)
    num < 0 ? num = num * -1 : num
end

def squared(num)
    return num*num
end

def average(array)
    ((array.sum)/(array.length.to_f))
end



#test cases
a = [1, 2, 3]
b = [4, 5, 6]
c = [10, 20, 10, 2]
d = [10, 25, 5, -2]

#puts equallength?(a,b)
#puts equallength?(a,c)
#puts equallength?(c,d)

puts calculatedifference(c,d)
puts solution(c,d)