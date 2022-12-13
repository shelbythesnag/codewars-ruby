=begin
An isogram is a word that has no repeating letters, consecutive or non-consecutive. 
Implement a function that determines whether a string that contains only letters is an isogram. 
Assume the empty string is an isogram. Ignore letter case.

Example: (Input --> Output)

"Dermatoglyphics" --> true "aba" --> false "moOse" --> false (ignore letter case)

isIsogram "Dermatoglyphics" = true
isIsogram "moose" = false
isIsogram "aba" = false

Input:
    - empty stirng is an isogram (conditional)
    - ignore letter case (downcase everything)

Algorithm:
    - determine conditions (above)
    - transform into array of characters
    - collect into array: label duplicate or unique
    - if all unique then it is an isogram.
    - if not all unique, then it is not an isogram (or if there are duplicates)

=end

def is_isogram(string)
    if string == nil
        true
    else 
        string
            .downcase
            .chars
            .map {|char| string.downcase.count(char) > 1 ? "duplicate": "unique" }
            .all?("unique") ? true : false
    end
end
