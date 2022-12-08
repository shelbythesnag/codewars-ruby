def find_it(seq)
    frequency_hash = Hash.new
    seq.each {|value| frequency_hash[value]!=nil ? frequency_hash[value] += 1 : frequency_hash[value]=1}
    frequency_hash.select{|key,value| value%2==1}.invert.values.join.to_i
end

#Better answer:
def find_it2(seq)
    seq.detect { |n| seq.count(n).odd? }
end

puts find_it2([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])