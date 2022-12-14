=begin
You live in the city of Cartesia where all roads are laid out in a perfect grid. 
You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. 
The city provides its citizens with a Walk Generating App on their phones -
- everytime you press the button it sends you an array of one-letter strings representing directions to walk 
    (eg. ['n', 's', 'w', 'e']). 
You always walk only a single block for each letter (direction) ;and 
you know it takes you one minute to traverse one city block, 
so create a function that will return true if the walk the app gives you will take you exactly ten minutes 
(you don't want to be early or late!) and will, of course, return you to your starting point. 
Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

examples:
a = ['n','s','n','s','n','s','n','s','n','s']
b = ['w','e','w','e','w','e','w','e','w','e','w','e']

=begin
Input:
- array of letters
- 2 counters: v = vertical h = horizontal

start v = 0, h = 0
n = v+=1
s = v-=1
e = h+=1
w = h-=1

2 calculations
total 10 minute walk?
- array.length == 10

return v = 0, h = 0?

if both true = true
    if either not true = false

=end

def is_valid_walk(walk)
    back2start(walk) && is10minwalk(walk) ? true : false
end

def back2start(array)
    horizontaltravel(array) ==0 && verticaltravel(array) == 0 ? true : false
end

def verticaltravel(array)
    vertical = 0
    array.each do |letter|
        if letter.include?('n')
            vertical += 1
        elsif letter.include?('s')
            vertical -= 1
        else
            next
        end
    end
    return vertical
end

def horizontaltravel(array)
    horizontal = 0
    array.each do |letter|
        if letter.include?('e')
            horizontal += 1
        elsif letter.include?('w')
            horizontal -= 1
        else   
            next
        end
    end
    return horizontal
end

def is10minwalk(array)
    array.length == 10 ? true : false
end


