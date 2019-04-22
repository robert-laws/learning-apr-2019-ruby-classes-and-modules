# Access the Superclass

# can still call parent methods even after overriding the parent method
# fallback to parent method if child class doesn't do everything
# can assign return value from super to a variable
# can pass arguments to super - if parent class accepts arguments

class Chef
  def make_dinner
    puts "Cook food."
  end
end

class AmateurChef < Chef
  def make_dinner
    puts "Read recipe."
    super
    puts "Clean up mess."
  end
end

chef = Chef.new
chef.make_dinner

new_chef = AmateurChef.new
new_chef.make_dinner

# --------------------------------

class Image
  attr_accessor :resizable

  def geometry
    "800x600"
  end
end

class ProfileImage < Image
  def initialize
    @resizable = true
  end

  def geometry
    @resizable ? "100x100" : super
  end
end

img = Image.new
puts img.geometry

img = ProfileImage.new
puts img.geometry

img.resizable = false
puts img.geometry
