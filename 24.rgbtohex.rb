=begin
The rgb function is incomplete. 
Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. 
Valid decimal values for RGB are 0 - 255. 
Any values that fall out of that range must be rounded to the closest valid value.

Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

The following are examples of expected output values:

rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3

a = (0,0,0)
b = (0,0,-20)
c = (300,255,255)
d = (173,255,47)

resources:
- https://en.wikipedia.org/wiki/Hexadecimal
- use base 16

Input:
receive 3 values.
- create a wrap
    - if values greater than 255, round down to 255
    - if values less than 0, round up to 0
- convert to hexadecimal value
    - problem: if length = 1, then we do not get the correct formatting. Added a formatting function for correct "format"
    - problem: answers not capitalized, capitalize all letters.
=end


def rgb(r,g,b)
   addzero(wrap(r).to_s(16)).upcase+addzero(wrap(g).to_s(16)).upcase+addzero(wrap(b).to_s(16)).upcase
end

def wrap(num)
    if num > 255
        255
    elsif num < 0 
        00
    else
        num
    end
end

def addzero(char)
    char.length <2 ? "0#{char}" : char
end

=begin
great solutions:

#clamp (restrict into a range)

using objects:
class Integer
  # restricts a range of an integer value to <min, max>
  def clamp(min, max)
    self < min ? min : self > max ? max : self
  end

  # converts an integer to a hex formatted string. returned string's length is always 2(1 byte)
  def to_hex
    to_s(16).upcase.rjust(2, '0')
  end
end

def rgb(r, g, b)
  rgb = [r, g, b]
  
  rgb.map! { |value| value.clamp(0,255) } # restrict the range of each value
  return rgb.map(&:to_hex).join("") # merge all 2 character strings(which are hex now) into one string with no space between them
end
=end