# Custom Exceptions

# inheriting from a built-in error class -> StandardError

class TooLoudError < StandardError
  attr_reader :volume
  def initialize(value, msg=nil)
    super(msg || "Error: too loud!")
    @volume = value
  end
end

class Radio
  def volume=(value)
    if value > 10
      raise TooLoudError.new(value)
    end
    @volume = value
  end
end

begin
  r = Radio.new
  r.volume = 20
rescue TooLoudError => e
  puts "Volume of #{e.volume}: #{e.message}"
end
