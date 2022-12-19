=begin
Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

1. determine which letters to count - uniq
2. loop through this array, find duplicates
3. define ifduplicate is true
4. conditional - if there is more than 1 instance, Duplicate = True.
5. new array = duplicates.
6. returne length of duplicate array.
=end
def duplicate_count(text)
    counter = Hash.new
    uniqueletters(text).each do |char|
        counter[char] = text.downcase.count(char)
    end
    duplicate_chars = Array.new
    counter.each do |key,value|
        if isduplicate(value)
            duplicate_chars << key
        else
            next
        end
    end
    duplicate_chars.length
end

def isduplicate(letter)
    letter > 1 ? true : false
end

def uniqueletters(text)
    text.downcase.split(//).uniq
end

puts duplicate_count('abcdeaB')

=begin
best:
def duplicate_count(text)
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end

def duplicate_count(text)
	arr = text.downcase.split("")
  arr.uniq.count { |n| arr.count(n) > 1 }
end
=end