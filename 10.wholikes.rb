=begin
Input Names:
- if name_array.length < 4... Puts "xxxx "Likes this
- if name_array.length >4 puts first 2, then name_array.length - 2 likes this.

=end




def likes(names)
    if names == []
        return 'no one likes this'
    elsif names.length == 1
        return names[0] + " likes this"
    elsif names.length < 4 && names.length > 1
        return names[0..(names.length-2)].join(", ")+ " and " + names[-1] + " like this"
    else
        return names[0..1].join(", ") + " and " + (names.length - 2).to_s + " others like this"
    end
end

likes(['Alex', 'Jacob', 'Mark', 'Max'])
likes(['Max', 'John', 'Mark'])
likes(['Jacob', 'Alex'])
likes(['Peter'])
likes([])


=begin

Using CASE:

  case names.size
  when 0 
    "no one likes this"
  when 1 
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end

=end
