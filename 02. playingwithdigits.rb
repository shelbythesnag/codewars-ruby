def dig_pow(n,p)
    new_array = n.to_s.split(//)
    a = new_array.each_with_index.collect do |num,pos| 
        (num.to_i)**(pos+p)
    end
    k = (a.sum)/n
    a.sum % n == 0 ? k : -1
end

puts dig_pow(695,2)
puts dig_pow(92,1)
puts dig_pow(46288, 3)

=begin
Best answer: 
def dig_pow(n, p)
    total = n.to_s.split('').map.with_index{|d, i| d.to_i ** (p+i)}.reduce(:+)
    total % n == 0 ? (total / n) : -1
end

note: 

=end