# Initialize Method

# method is called automatically whenever a new instance of a class is created
# called with the .new method

class Animal
  attr_accessor :noise

  # def initialize
  #   @noise = "Oink!"
  #   self.noise = "Oink!" # same as above
  #   puts "New animal instantiated"
  # end

  def initialize(options={})
    @noise = options[:noise] || "Grrr!"
  end
end

pig = Animal.new
puts pig.noise

cat = Animal.new({noise: "Meow!"})
puts cat.noise