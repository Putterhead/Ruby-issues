# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

# I found this solution pretty quickly on SOF and to explain
# .any? returns true if the block ever returns a value other 
# than false or nil
# What it is basically asking is 'for each character of the 
# array, are there any that occur at least 3 times?'

# def got_three?(array)
#   return true if array.any? { |y| array.count(y) >= 3 } 
#   false
# end

# I don't know how but I'm getting the error undefined method `got_three?'
# its saved before running it, so, weird. Ok, I figured it out, 
# I think for his rspec the method has to be named go_three? 
# otherwise it won't work. On the example [1, 2, 1, 1] it expected
# true but for some reason my method returned false.
# not going spend any more time on trying to fix this

The solution
def got_three?(elements)
  elements.each_cons 3 do |a, b, c|
    return true if a == b && b == c
  end
  false
end