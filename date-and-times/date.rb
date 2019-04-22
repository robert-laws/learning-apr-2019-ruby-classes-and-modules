require 'date'

# DateTime

# Subclass of date -> require 'date'

puts DateTime.now

puts DateTime.new(2016, 11, 5, 16, 43, 23)

puts DateTime.now.to_time

# Using modern date -> use Time, using historic times -> use DateTime

puts DateTime.new(2000, 1, 1, 2, 45, 0, '+3').month

puts DateTime.now.to_time.class