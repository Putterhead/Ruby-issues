# Lets say we wanted to knwo what planet people are from.
# Well, that information is the same across every person
# so we can keep it in an instance variable on the class.

class Person

  # When we define methods here, they get defined for 
  # instances of Person, so we need to either store
  # them in the Person's class or singleton class. It doesn't
  # make sense to gieve EVERY class a home_planet, so 
  # lets put it on the singleton_class
  self # => Person
  class << self
    attr_accessor 'home_planet'
  end

  # remember, self is Person, so @home_planet
  # is defined on the Person class itself
  @home_planet = 'Erth'
  Person.home_planet # => "Erth"
  Person.home_planet = 'Earth'
  @home_planet       # => "Earth"
  --QUESTION---
  # “Its an instance variable of this class rather than an 
  # instance variable of an instance of this class” - what did he
  # mean by that?

  attr_accessor 'name'
  def initialize(name)
    # self is now an instance of person, so @name
    # is defined for this particular person
    @name = name
  end

  # This is for instances
  def home_planet
    Person.home_planet # so that people can have a home planet too, we're defining an instance method, named home_planet
  end                  # so an instance of Person can call this method
end

Person.home_planet # => "Earth"
kate = Person.new 'Kate Beckinsale'
josh = Person.new 'Josh Cheek'
kate.home_planet  # => "Earth"
josh.home_planet  # => "Earth"
kate.name         # => "Kate Beckinsale"
josh.name         # => "Josh Cheek"

Person.instance_variables # => [:@home_planet]
josh.instance_variables   # => [:@name]
