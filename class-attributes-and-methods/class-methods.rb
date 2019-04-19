# Class Methods

# behaviors related to a class generally and called on a class directly
# ex. Animal.new - class method - no instance of Animal exists before calling .new
# ex. Bicycle.all_brands - provides list of all brands for class generally
# class methods use the self keyword when defined
# class method - Array.new
# instance method - Array#size

class SomeClass
  def self.method_name
    # do something
  end
end

# Factory pattern

class Product
  attr_accessor :name, :price

  def initialize(price=0.0)
    @price = price
  end

  def self.exclusive
    Product.new(45.0)
  end

  def self.standard
    Product.new(30.0)
  end

  def self.discounted
    Product.new(15.0)
  end

  def self.categories
    ['Art', 'Book', 'Tool']
  end
end

ring = Product.exclusive
puts sprintf('$%.2f', ring.price)