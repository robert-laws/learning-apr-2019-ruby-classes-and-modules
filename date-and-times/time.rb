# Time

# built-in class
# all times are number of seconds since Jan 1, 1970
# same as unix time

puts Time.now
puts Time.now.to_i
puts Time.at(1414353666)

tomorrow = Time.now + (60 * 60 * 24)
puts tomorrow

# (60 * 60 * 24) day
# (60 * 60 * 24 * 7) week
# (60 * 60 * 24 * 365) year

puts Time.now.year # month, day, hour, min, sec, nsec
# yday
# wday
puts Time.now.wday
puts tomorrow.wday

# sunday?, monday?, etc.
# strftime - format string

# zone
# utc?, gmt?
# gmt_offset, etc.