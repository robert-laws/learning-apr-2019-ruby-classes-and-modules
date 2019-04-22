# Attribute Methods

# also called attr_* methods
# attr_reader
# attr_writer
# attr_accessor

class Person
  attr_reader :name

  # same as the following
  def name
    @name
  end

  attr_writer :name

  # same as the following
  def name=(value)
    @name = value
  end
end

class Animal
  # same as using both attr_reader, attr_writer together
  attr_accessor :name
  attr_accessor :noise, :color
end

class Radio
  attr_reader :volume

  def volume=(value)
    return if value < 1 || value > 10
    @volume = value
  end

  def crank_it_up
    self.volume = 11 # use self when calling writer methods
  end

  def volume_status
    "Current volume: #{volume}" # can omit self when calling reader methods
  end
end

pig = Animal.new
pig.name = "Porky"
pig.noise = "Oink!"

puts "#{pig.name} says #{pig.noise}"

radio = Radio.new
radio.volume = 9

puts radio.volume

radio.crank_it_up

puts radio.volume_status