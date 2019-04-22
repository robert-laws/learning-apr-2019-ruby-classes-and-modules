# Person class

require_relative '../modules/nameable'

class Person
  include Nameable

  def say_hello
    "hello!"
  end
end

person = Person.new
person.first_name = "Bob"
person.last_name = "Cobb"

puts person.full_name
puts person.initial_and_last_name