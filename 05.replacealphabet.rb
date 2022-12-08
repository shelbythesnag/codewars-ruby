def alphabet_position(text)
    a = text.downcase.split(//).map.each {|char| char.ord-96}
    a.delete_if{|num| num < 1 || num > 26}.join(" ")
end

puts alphabet_position("hell __o")