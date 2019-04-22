require 'date'

# Challenge - Birthdate Analysis

# Ask user for the year month and date of their birth
# Tell the date of the week as text
# Tell date of the year as number
# Tell the week of the year
# Whether it was a leap year

days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

puts "|---------------------|"
puts "|  Birthday Analysis  |"
puts "|---------------------|"

puts "What you were you born?"
year = gets.chomp

puts "What number month were you born?"
month = gets.chomp

puts "What date of the month were you born"
day = gets.chomp

bday = Date.new(year.to_i, month.to_i, day.to_i)
# bday = Time.new(1975, 12, 22)
puts "-----------------------"
puts "You were born on a #{bday.strftime('%A')}."
puts "You were born on a #{days[bday.wday]}."
puts "It was the #{bday.yday / 7} week of the year"
puts "It was the #{bday.cweek} week of the year"
puts "It was the #{bday.yday} day of the year"
puts "You were #{bday.year % 4 == 0 ? '' : 'not ' }born in a leap year."
puts "-----------------------"