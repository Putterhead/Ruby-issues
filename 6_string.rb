# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

# Question: 
# Not sure how this works, 'to_return' = "" is telling Ruby that 'to_return'
# is an empty string? So the block is somehow filling this up with the the right (odd or even)
# characters.
# string.size.times do |index| = the '.size' (.length?) of the string is evaluated and '.times'
# iterates the given string int times - the relationship between 'times' and do |index| is unclear.
# I hadn't seen 'next if' in this way before - am I right in thinking that (for even on line XX)
# that it should skip the evaluation to the next character if its even (i.e. 'abcd' = 'bd')?
# I think I'm also confused that '.times do |index|' is applicable to a string.

def odds_and_evens(string, return_odds)
  to_return = ""
  string.length.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
end
#     return string.index(string.length/)
#    == true 
#     return string.index(string.length/2-1) string.index(string.length/2) #('') i +=2 #.each_index.select {|i| i.even?}) #string.every_second_index 
#   else
#     return string.the_first
#   end
# end
