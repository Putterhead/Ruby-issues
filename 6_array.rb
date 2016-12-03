# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime. 
# 
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself. 
# 
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
# 
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

# prime number is a number divisible by one and itself, it 
# must also be a whole number greater than 1.

# Something like this; I don't expect this to run but
# this is where my thinking is coming from. I still need
# to figure out how to get the number of elements
# def prime_chars?(string)
#   string.length % string.length == 1 && string.length % 1 == 0 ? true : false
# end

# Solution: Ok, so I didnt think of creating an Integer class
# but seeing this used helps me understand the use of 
# classes. First, the method 'prime?' is created, telling
# Ruby that if 'self' (string) is < 2 its false. I had to look
# up what .upto was and its a public instance method that iterates
# the given block, passing in integer values from int (2) up to 
# and including limit (self) and for those numbers, it returns false
# if that number is divisibile by itself without a remainder, otherwise
# it returns true.
  class Integer
  def prime?
    return false if self < 2
    2.upto Math.sqrt(self) do |i|   # according to Rubydocs sqrt returns 
      return false if self % i == 0 # the non-negative square root of x.
    end                             # not sure if I understand this fully
    true
  end
end
#  Here, its taking the variable 'strings', joining the strings together
# evaluating then the length, then the method prime? (above) is being 
# called, which results in true or false.
def prime_chars?(strings)
  strings.join.length.prime?
end

