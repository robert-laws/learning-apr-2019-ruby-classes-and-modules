# Reader and Writer Methods

# technique to access instance variables directly
# instance variables are not accessible from outside the class, but can be accessed via methods setup to read/write attributes

# common pattern in other languages
class Animal
  def get_noise
    @noise
  end

  def set_noise(value)
    @noise = value
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