## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a animal
class Dog < Animal
  
  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal
  
  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a object
class Person
  
  def initialize(name)
    ## Person has-a name
    @name = name
    
    ## Person has-a pet of some kind
    @pet = nil
  end
  
  attr_accessor :pet
end

## Employee is-a Person
class Employee < Person
  
  def initialize(name, salary)
    ## Employee has-a name like Person  ## hmm what is this strange magic?
    super(name)
    ## Employee has-a salary
    @salary = salary
  end
end

## Fish is-a object
class Fish
end

## Salmon is-a object
class Salmon < Fish
end

## Halibut is-a object
class Halibut < Fish
end

## Rover is-a dog
rover = Dog.new("Rover")

## Satan is-a cat
satan = Cat.new("Satan")

## Mary is-a person
mary = Person.new("Mary")

## mary has-a pet
mary.pet = satan

## Frank is-a employee
frank = Employee.new("Frank", 120000)

## Frank has-a pet
frank.pet = rover

## flipper is-a fish
flipper = Fish.new()

## Crouse is-a almon
crouse = Salmon.new()

## Harry is-a halibut
harry = Halibut.new()