# DiceSet class

class DiceSet
  # attr_reader :dice_array # optional - display will do the same thing

  def initialize
    @dice_array = [Dice.new, Dice.new]
  end

  def display
    # "[#{dice_array[0].value}] - [#{dice_array[1].value}]"
    @dice_array.map { |d| "[ #{d.value} ]"}.join(" - ")
  end

  def roll
    @dice_array.each { |dice| dice.roll }
  end
end