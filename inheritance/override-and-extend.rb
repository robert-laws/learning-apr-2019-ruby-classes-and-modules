# Override and Extend

# override behaviors that will modify parent's behavior
# add new behaviors that the parent doesn't possess

class Sofa
  @@can_open = false
  attr_accessor :width, :length

  def area
    width * length
  end
end

class SofaBed < Sofa
  @@can_open = true

  attr_accessor :length_opened, :is_open

  # redefining the area method in the SofaBed class - replaces method from Sofa
  def area
    is_open ? width * length_opened : width * length
  end
end