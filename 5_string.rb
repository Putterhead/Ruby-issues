# Given a string, replace every instance of sad to happy
# 
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
  # if string.include? "happy"
  #   string
  # else
  # I am sure there is another way of doing this - calling gsub twice seems 
  # unecessary but I couldn't think of another way of solving it.
  string.gsub("sad", "happy").gsub("Sad", "Happy")
  #string.gsub("sad", "happy") # gsub("sad", "happy").titleize
  # end
end
