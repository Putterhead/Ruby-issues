# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
# 
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

# So I'm thinking some sort of evaluation with .select.odd? and 
# maybe a regex to ignore the characters that should not
# be considered
def every_second(string)
  to_return = []
  string.each_with_index do |string, idx|
    to_return << string if idx % 2 == 0  
end
to_return
# My error says 'unexpected end-of-input, expecting keyword_end' but really
# I was just trying to get a result that I could then work with

# Looking at the solution, I wasn't too far off. Instead of using 
# a regex he's taking the characters to be excluded and turned them
# into white space, I think.
def alternate_words(sentence)
  # this will get better when we learn regular expressions :)
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
  end
  # So having removed the unwanted chars, he assigns this result
  # to the variable words, which is all they are now.
  # the rest of the solution is very similar to mine...only it works
  words = sentence.split
  solution = []
  words.each_with_index do |word, index|
    solution << word if index.even?
  end
  solution
end
