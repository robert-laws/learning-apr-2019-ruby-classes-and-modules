# Challenge - Custom Exception

# add custom exception to an existing project

# bday = Date.new(year.to_i, month.to_i, day.to_i)
# # bday = Time.new(1975, 12, 22)
# puts "-----------------------"
# puts "You were born on a #{bday.strftime('%A')}."
# puts "You were born on a #{days[bday.wday]}."
# puts "It was the #{bday.yday / 7} week of the year"
# puts "It was the #{bday.cweek} week of the year"
# puts "It was the #{bday.yday} day of the year"
# puts "You were #{bday.year % 4 == 0 ? '' : 'not ' }born in a leap year."
# puts "-----------------------"

class NotANumberError < StandardError
  attr_reader :year
  def initialize(value, msg=nil)
    super(msg || "is not a number")
    @year = value
  end
end

class DateError < StandardError
  attr_reader :year
  def initialize(value, msg=nil)
    super(msg || "is too early")
    @year = value
  end
end

class BirthdayAnalysis
  @@days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

  attr_reader :year, :month, :day

  def year=(value)
    if value.to_i < 1970
      raise DateError.new(value)
    end
    @year = value
  end

  def initialize(value)
    if value.to_i < 1970
      raise DateError.new(value)
    end
    @year = value
  end
end

puts "|---------------------|"
puts "|  Birthday Analysis  |"
puts "|---------------------|"

puts "What you were you born?"
year = gets.chomp

# puts "What number month were you born?"
# month = gets.chomp

# puts "What date of the month were you born"
# day = gets.chomp
begin
  bday = BirthdayAnalysis.new(year)
rescue DateError => e
  puts "Value of \"#{e.year}\" #{e.message}"
end

# puts bday.year