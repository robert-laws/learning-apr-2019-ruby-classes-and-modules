# Exception Methods

# uses exception as a local variable

begin
  1 / 0
rescue ZeroDivisionError => e
  puts "Error: #{e.class} handled. Message: #{e.message}."
rescue => e
  puts "Error: #{e.class} handled. Message: #{e.message}."
end