# Attributes

# attributes (properties) are values that exist within the instance of the class
# values are assigned to attributes
# ex. car is gree
# ex. house has two bedrooms

# instance variables -> @variable

class Animal
  def make_noise
    @noise
  end

  def set_noise
    @noise = "Oink!"
  end
end

pig = Animal.new
pig.set_noise # initializes instance variable @noise
puts pig.make_noise # retrieves and returns instance variable @noise

# an instance of a class always has access to instance variables anywhere within the class

