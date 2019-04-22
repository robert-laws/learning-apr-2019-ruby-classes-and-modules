# Raise Exceptions

# use ruby's built-in exception classes
# can raise any type of error

class NoEvenNumbers < StandardError
  attr_accessor :array

  def initialize(array)
    super("No Even Numbers....")
    @array = array
  end
end

def even_numbers(array)
  unless array.is_a?(Array)
    raise ArgumentError
  end

  if array.length == 0
    raise StandardError.new("Too few elements")
  end

  even_array = array.find_all {|el| el.to_i % 2 == 0 }

  if even_array.length == 0
    raise NoEvenNumbers.new(array)
  end
end

name = "bob"
arr = []
items = [4, 8, 9, 11, 12, 15]
numbers = [1, 5, 7]

# puts even_numbers(items).join(',')
# puts even_numbers(name)
begin
  puts even_numbers(numbers)
rescue => e
  puts "#{e.class}: #{e.message}"
  puts "The array provided was: [#{e.array.join(',')}]"
end