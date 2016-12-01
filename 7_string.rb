# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

# so I can use .count to find the number of occurrences in the string,
# "Peter is a noob".count('e') #=> 2 
# I can also use .scan, returning a string in a string as an array,
# "Peter is a noob".scan(/a/) #=> ["e", "e"]
# Perhaps more useful for this challenge is the String.index() method,
# "hello".index('e') #=> 1 , but this only shows the first occurrence and
# ignores any thereafter.
# .partition (or string.partition('r')) just seems to split the characters
# before and after into substrings.
# Then I thought about .split would break the string down into substrings with 
# which I could then work on the index, returning those after the index 
# position of 'r'. 
# I've spent way too long thinking about this so I'm going to look at the
# solution. 
# The solution looks similar in structure to the previous challenge, which also
# uses 'to_return = "". I wasn't able to find any material on rubydocs for this
# If I understand correctly, in this instance its a variable being assigned an
# empty string, which is being used later in the block, which gets 'pushed (<<)'
# to 'current_char' (which is given the argument string[index,1]) if it is false.
# I'm not sure, though, why add_next is being put = to false
def pirates_say_arrrrrrrrr(string)
  to_return = ""
  add_next = false
  string.size.times do |index|
    current_char = string[index, 1] # kindly enough, Josh Cheek put in a comment
# explainging the above line, that the second param tells Ruby to get a string of
# length 1, which is only necessary on version 1.8 and if you're on 1.9 and above
# that you should just go with string[index]. This makes me wonder about the 
# value this tutorial offers, just saying.
    to_return << current_char if add_next
    add_next = (current_char == "r" || current_char == "R")
  end
  to_return
end
# So, all in all, I really struggled understanding the syntax in this challenge. 