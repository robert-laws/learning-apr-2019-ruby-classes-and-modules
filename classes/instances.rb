# Instances

# single object created from a class definition
class Item
  def say_hello
    "hello!"
  end
end

item = Item.new
item2 = Item.new

puts item.object_id
puts item2.say_hello