=begin
Implement a function that receives two IPv4 addresses, and returns the number of addresses between them (including the first one, excluding the last one).

All inputs will be valid IPv4 addresses in the form of strings. The last address will always be greater than the first one.


resource: https://www.ibm.com/docs/en/ts3500-tape-library?topic=functionality-ipv4-ipv6-address-formats
- IPv4 addresses have 4 'columns', each column is called an octet and must be a decimal value between 0 and 255

Input 1: STARTING IP address
Input 2: ENDING IP Address

- Convert all inputs into arrays. split by .
- difference = new array
- endingIP[n] - startingIP [n] = difference[n]

function - calculate the difference to return a value.
Total Number = 256 X 256 X 256 X 256
octet 1 - octet 1 = a = difference 1(256 * 256 * 256)
octet 2 - octet 2 = b = difference 2(256*256))
octet 3 - octet 3 = c = difference 3(256)
octet 4 - octet 4 = d = difference 4

Total difference a + b + c + d
=end

def ipsBetween(start, ending)
    octetcalculator(difference(start,ending)).sum
end

def octetcalculator(array)
    between = Array.new
    array.each_index do |index|
        between[index] = array[index] * multiplier(array)[index]
    end
    return between
end

def multiplier(array)
    multiplier = Array.new
    array.each_index do |index| 
        multiplier[index] = 256**(multiplefactor(array) - index)
    end
    return multiplier
end

def multiplefactor(array)
    array.length - 1
end

def difference(start,ending)
    a = convert_toint(start)
    b = convert_toint(ending)
    c = Array.new
    b.each_index {|index| c[index] = b[index]-a[index]}
    return c
end

def convert_toint(array)
    array.split('.').map.each {|value| value.to_i}
end

start1 = "20.0.0.10"
ending1 = "20.0.1.0"

puts c = difference(start1,ending1)
puts multiplier(c)
puts octetcalculator(c)
puts ipsBetween(start1,ending1)
