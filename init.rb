#!/usr/bin/env ruby
# initializing file for ruby program

require_relative 'classes/person'
require_relative 'classes/dice'
require_relative 'classes/dice_set'

hal = Person.new
hal.first_name = "Hal"
hal.last_name = "Hope"
# puts hal.say_hello

# puts hal.full_name
# puts hal.initial_and_last_name
# puts hal.get_initial("Bob") # cannot call this private method in the Person class

puts "|-------------------|"
puts "|     DICE GAME     |"
puts "|-------------------|"

ds = DiceSet.new

loop do
  puts "type 'r' to roll or 'q' to quit"
  user_input = gets.chomp
  if user_input == 'r'
    ds.roll
    puts "dice roll result: #{ds.display}"
  elsif user_input == 'q'
    break
  else
    next
  end
end