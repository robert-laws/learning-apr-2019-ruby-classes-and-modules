# Class Inheritance

# fundamental part of object-orientation
# bestowal/inheritance of behaviors from one class to another

# ex. Animal -> another class that would inherit from the Animal class (superclass) to another class such as Duck (subclass)
# parent class must be defined before a subclass can inherit from it

class Animal
  attr_accessor :noise
  attr_accessor :color

  @@total_animals = 0

  def self.add_to_total
    @@total_animals += 1
  end

  def self.total_animals
    @@total_animals
  end
end

class Pig < Animal # the Pig subclass inherits from the Animal superclass
  def initialize
    @noise = "Oink!"
    @color = "Pink"
    Animal.add_to_total
  end

  def eat
    "Nom nom nom!"
  end
end

class Cow < Animal
  def initialize
    @noise = "Moo!"
    @color = "White and Black"
    Animal.add_to_total
  end

  def jump
    "Over the moon we go!"
  end
end

generic = Animal.new

wilbur = Pig.new
puts wilbur.noise
puts wilbur.eat

maisie = Cow.new
puts maisie.noise
puts maisie.jump

puts Animal.total_animals