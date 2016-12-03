# Make a person class that has a name, age, and birthday
#
# josh = Person.new 'Josh', 28
#
# josh.name     # => "Josh"
# josh.age      # => 28
#
# josh.name = 'Joshua'
# josh.name     # => "Joshua"
#
# josh.birthday # => 29
# josh.age      # => 29
#
# josh.birthday # => 30
# josh.age      # => 30
#

# class Person
#   def set_name(name)
#     @name = name
#   end

#   def set_age(age)
#     @age = age
#   end

#   def set_birthday(birthday)
#     @birthday = birthday
#   end

# end

class Person
  attr_accessor 'name', 'age'

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def birthday
    @age += 1
  end
end
# person = Person.new
# person.set_name "Joshua"
# person.set_age 28

