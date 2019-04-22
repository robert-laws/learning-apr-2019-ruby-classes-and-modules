# Class Attributes

# related to a class generally, not an instance - shared values for all members of the class
# used less frequently than class methods
# use class variables - @@variable

class Animal
  @@species = ['pig', 'cat', 'cow', 'dog', 'duck', 'horse', 'bird']
  @@total_animals = 0
  @@current_animals = []

  attr_accessor :noise, :color

  def initialize(options={})
    @noise = options[:noise] || "Bonk!"
    @color = options[:noise] || "Yellow"
    @@total_animals += 1
    @@current_animals << self
  end

  def self.species
    @@species
  end

  def self.total_animals
    @@total_animals
  end

  def self.create_a_pig
    Animal.new(noise: "Oink!", color: "Pink")
  end
end

Animal.species.each do |specie|
  puts specie
end

pig = Animal.new({noise: "Oink!"})

wilbur = Animal.create_a_pig
puts wilbur.color

puts Animal.total_animals