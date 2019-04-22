# Handle Specific Exception

# it's possible to rescue for specific types of errors

def divide(x,y)
  x / y
rescue ZeroDivisionError
  puts "ZeroDivisionError handled"
rescue TypeError
  puts "Requires two integer arguments"
rescue
  puts "Some other StandardError handled"
end

begin
  divide(8, 0)
  divide(8, "people")
  divide("hello")
rescue ArgumentError
  puts "Wrong number of arguments"
end