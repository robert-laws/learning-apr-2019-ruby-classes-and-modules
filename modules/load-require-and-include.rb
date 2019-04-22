# Load, Require, and Include

# load - not use frequently - loads source file

# require - same as load - but loads a source file only one time
# $LOAD_PATH - name of file with full path name

# include - includes modules in classes and nothing else in ruby

require 'date'
require 'full/path/name'
require_relative '../classes/person'

class Customer
  include Person
end