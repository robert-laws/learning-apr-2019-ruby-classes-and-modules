class ToDoList
  include Enumerable

  def each
    @items.each { |item| yield(item) }
  end

  def items
    @items
  end

  def items=(array=[])
    @items = array
  end

  def initialize(array=[])
    @items = array
  end

  def <<(item)
    @items.unshift(item)
  end
end

list = ToDoList.new(['dishes', 'nap', 'laundry', 'vacuum'])

print list.items

puts list.first

puts list.find {|i| i.length > 6 }

print list.map { |i| i.capitalize }

print list.sort

list << "sweep"

print list.items

list.sort.each_with_index do |item, i|
  puts "#{i + 1}: #{item}"
end