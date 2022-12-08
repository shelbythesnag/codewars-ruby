class String
  def toJadenCase()
    (split().each{|word| word.capitalize!}).join(" ")
  end
end

str = "How can mirrors be real if our eyes aren't real"
puts str.toJadenCase()


=begin
Best Answer in my opinion

class String
  def toJadenCase
    self.split.map(&:capitalize).join(" ")
  end
end

1. used self
2. split & map to recollect all the split items
3. &:capitalize - need to research what this does.

=end