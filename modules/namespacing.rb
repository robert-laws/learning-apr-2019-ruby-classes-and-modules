# Namespacing

# wrappers around ruby code
# modules cannot be instantiated, like classes
# used for namespacing and mixins

# namespacing - used to prevent conflicts with similarly named classes and methods
# namespacing classes in open-source plugins - reduces conflict problems

# example

module DatingSite
  class Date

  end
end

dinner = DatingSite::Date.new

