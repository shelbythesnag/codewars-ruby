def descending_order(n)
    n.to_s.split(//).sort.reverse.join.to_i
end

puts descending_order(1235123512351234)