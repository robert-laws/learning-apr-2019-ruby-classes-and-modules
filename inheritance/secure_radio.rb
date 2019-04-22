require_relative 'radio'
require_relative 'shift_cipher'

class SecureRadio < Radio
  @@shift = 3

  # def play
  #   puts "The radio plays: " + audio_stream
  # end

  def hello
    super
  end

  protected

    def audio_stream
      ShiftCipher.encode(super, @@shift)
    end
end