=begin

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. 
Additionally, if the number is negative, return 0 (for languages that do have them).

Note: If the number is a multiple of both 3 and 5, only count it once.

Courtesy of projecteuler.net (Problem 1)

Input:
- 1. find all numbers below the number (determine the range) to look for next conditions
- 2. find all numbers that are multiple of 3 (%3 ==0)
- 3. find all numbers that are multiple of 5 (%5 ==0)
    - mini condition. if number is negative, return 0.
- 4. merge two arrays and remove any duplicates (.uniq)
- 5. sum all values


=end

#examples
a = 10
b = 20
c = 200

def range(num)
    (0...num).to_a
end


def findmultiples(array,multiple)
    multiplesof = Array.new
    array.map!.each do |num|
        if num % multiple == 0
            multiplesof<< num
        else
            next
        end
    end
    return multiplesof
end

def solution(num)
    (findmultiples(range(num),3) + findmultiples(range(num),5)).uniq.sum
end
