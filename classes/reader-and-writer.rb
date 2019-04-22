# Reader and Writer Methods

# technique to access instance variables directly
# instance variables are not accessible from outside the class, but can be accessed via methods setup to read/write attributes

# common pattern in other languages
class Animal
  attr_accessor :noise, :color

  def initialize(noise="", color="")
    @noise = noise
    @color = color
  end

  def get_noise
    @noise
  end

  def set_noise(value)
    @noise = value
  end

  def self.types
    ['pig', 'cow', 'duck']
  end

  def self.create_a_pig
    Animal.new("Oink!", "Pink")
  end
end

# ruby convention
class Person
  def noise
    @noise
  end

  def noise=(value)
    @noise = value
  end
end

hal = Person.new
hal.noise = "Bonk!"

puts hal.noise

Animal.types.each do |type|
  puts type
end

wilbur = Animal.create_a_pig
puts wilbur.noise
puts wilbur.color