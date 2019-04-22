# Challenge - Radio

# define a radio class
# controls for volume, frequency, and band (AM/FM)

class Radio
  # instance reader
  attr_reader :volume
  attr_reader :freq
  attr_reader :band

  @@fm_frequencies = 88.0..108.0
  @@am_frequencies = 540.0..1600.0
  @@default_fm_freq = 95.5
  @@default_am_freq = 1010.0

  # class method
  def self.am
    Radio.new(band: "AM")
  end

  # class method
  def self.fm
    Radio.new(band: "FM")
  end

  # instance writer
  def volume=(value)
    return if value < 1 || value > 10
    @volume = value
  end

  # instance writer
  def freq=(value)
    value = value.to_f
    value = default_freq unless allowed_frequencies.include?(value)
    @freq = value
  end

  def initialize(options={})
    self.volume = options[:volume] || 5
    @band = options[:band] || "FM"
    @freq = default_freq
  end

  # instance method
  def status
    "station: #{freq} #{band}, volume: #{volume}."
  end

  private

    def default_freq
      @band == "AM" ? @@default_am_freq : @@default_fm_freq
    end

    def allowed_frequencies
      @band == "AM" ? @@am_frequencies : @@fm_frequencies
    end
end

box = Radio.fm
box.volume = 3
box.freq = 100.5
puts box.status

# box.volume = 9
# puts box.status

# box.freq = 1010.5
# puts box.status

# puts box.band

# box = Radio.new({band: "FM", freq: 110})
# box.volume = 4
# puts box.status