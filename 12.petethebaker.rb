=begin
Instructions:
Pete likes to bake some cakes. He has some recipes and ingredients. 
Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). 
For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). 
Ingredients that are not present in the objects, can be considered as 0.

So given the amount of inputs, it will calculate how many cakes can be made. Compare recipe requirements vs what is available.

Examples:

  it('basic recipes') do
    Test.assert_equals(cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}), 2)
    Test.assert_equals(cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}),11)
  end
  
  it('missing ingredient') do
    Test.assert_equals(cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}),0)
  end
  
  it('not enough ingredients') do
    Test.assert_equals(cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}),0)
  end
  
  it('no ingredients available') do
    Test.assert_equals(cakes({"eggs"=>4, "flour"=>400},{}),0)
  end
  
  it('exactly enough ingredients for 1 cake') do
    Test.assert_equals(cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}), 1)
  end





available -> flour = 2X, sugar = 6X, eggs = 5x, milk = not needed
therefore we number of cakes me can make is the minimum of the ingredients, excluding not needed.

Flow ->

Input
- recipe requirements - base. 2 conditions
  - the available ingredients MUST HAVE all of the ingredients listed in the recipe in order to bake 1 cake
  - the must have at a minimum the amount required to bake 1 cake.
- We are constrained by the ingredient with the lowest quantity.
- compare pantry ingredients against recipe ingredients. Store the comparison data, find the minimum, excluding nil.
- amount of ingredients we have in the pantry. We do not care about the units of measurement, we assume units are consistent within items that are the same name.

Create a Hash set of values: Available quantities as a float, or nil.
cut out all nil values, find min.
=end

def cakes(recipe, available)
    compare = Hash.new
    if canwemakecake?(recipe,available) == true
        available.keep_if {|key,value| recipe[key]!=nil}
        puts compare = recipe.merge(available) {|key, old_value, new_value| new_value.to_f/old_value}
        compare.values.min.to_i
    else 
        return 0 
    end
end

def canwemakecake?(recipe,available)
    a = recipe.map.each {|ingredient,value| available.has_key?(ingredient)}
    a.uniq.size == 1 && a.include?(true) ? true : false 
end


recipe1 = {"flour"=>500, "sugar"=>200, "eggs"=>1}
available1 = {"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}

compare = Hash.new


puts cakes(recipe1,available1)