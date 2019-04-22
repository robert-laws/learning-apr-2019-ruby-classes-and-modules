# Mixins

# since ruby only allows subclasses to inherit from one superclass
# use module to package shared functionality - mix in features

# class Person
#   attr_accessor :first_name, :last_name

#   def full_name
#     "#{first_name} #{last_name}"
#   end
# end

# What if other similar classes need the same type of functionality

module Nameable
  attr_accessor :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end
end

module ContactInfo
  attr_accessor :address, :city, :state, :zip

  def full_address
    "#{address}\n#{city}, #{state} #{zip}"
  end
end

class Person
  include Nameable
  include ContactInfo
end

class Customer
  include Nameable
  include ContactInfo
end

class Employee
  include Nameable
  include ContactInfo
end

# use class inheritance when need to modify or extend behavior of another class
# use mixins when several classes need to use single set of behaviors