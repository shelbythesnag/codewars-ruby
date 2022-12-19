=begin
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:
Input:(str) -> helper function to validate input
- If the input or the result is an empty string it must return false. (str.size < 0)


Outputs:
1. All words must have their first letter capitalized.
2. no spaces
3. It must start with a hashtag (#). #unshift()
- If the final result is longer than 140 chars it must return false. (str.size > 140) 

Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false

=end


def generateHashtag(str)
    a = removespaces(str)
    isempty?(a) || isgreaterthan140char(a) ? false : a.insert(0,"#")
end

def removespaces(str)
    a = str.split(' ').map!.each {|word| word.capitalize}
    a.join
end

def isempty?(str)
    str.size <= 0 ? true : false
end

def isgreaterthan140char(str)
    str.size > 139 ? true : false
end


a = "Codewars"
b = "code" + " " * 140 + "wars"
c = " " * 200
#puts generateHashtag(a)
#puts generateHashtag(b)

puts generateHashtag(c)
