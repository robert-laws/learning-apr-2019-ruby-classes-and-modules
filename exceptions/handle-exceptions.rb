#!/usr/bin/env ruby

# Handle Exceptions

# exceptions are classes for handling exceptional events
# errors - SyntaxErrors, NoMethodError

begin
  # code that could cause an exceptional event
  1 / 0
rescue
  # code for handling exceptional event
  puts "Exception raised, but handled"  
end

def divide(x, y)
  x / y
rescue
  "Exception raised..."
end


def division(x, y)
  x / y
end

begin
  division(6, 0)
rescue
  puts "Exception is raised, and handled..."
end


puts divide(5, 0)