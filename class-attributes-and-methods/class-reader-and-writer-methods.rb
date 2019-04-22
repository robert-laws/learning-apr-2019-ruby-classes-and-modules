# Class Reader and Writer Methods

# there is no attr_* equivalent for classes
# must create them manually

class Animal
  @@species = ['bat', 'cat', 'dog', 'bird', 'horse', 'pig']

  def self.species
    @@species
  end

  def self.species=(array)
    return unless array.is_a?(Array)
    @@species = array
  end
end

felix = Animal.new

Animal.species = ['cat', 'dog']
puts Animal.species

