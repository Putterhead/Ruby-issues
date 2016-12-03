# I want to be able to represent a bowl as a class that 
#     - has a method that displays what is in the bowl.
#     - has a method that can add a vegetable to the bowl
#     - has a method that can remove a vegetable from the bowl
# ```
# At the moment all i want you to do is think about it from a ruby 
# object oriented perspective, but if you feel you want to go ahead
# and spike some code, absolutely!


in_bowl = ["cucumber", "lettuce", "potato"]
class Bowl
  # The main use of the initialize method is to pass arguments to
  # create different instances of the class. Like a blueprint or
  # a factory would using different materials.
  def initialize(items)
    @items = items
  end

  attr_reader :items

  def add_veg(veg)
    items << veg 
  end

  def remove_veg(veg)
    items.delete(veg)
  end

  # def show_bowl # getter method - you dont need this when you have attr_reader
  #   @items
  # end
end 
bowl = Bowl.new(in_bowl)
bowl.add_veg("carrot")