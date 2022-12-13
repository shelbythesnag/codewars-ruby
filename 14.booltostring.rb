=begin
Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

Input:
- true
- false


=end

def bool_to_word(bool)
    if bool == true
      'Yes'
    else
      'No'
    end
end

#or

def bool_to_word(bool)
    bool == true ? 'Yes' : 'No'
end