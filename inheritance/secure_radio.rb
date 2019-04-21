require_relative 'shift_cipher'

class SecureRadio < Radio
  def play
    puts "The radio plays: " + audio_stream
  end

  private

    def audio_stream
      ShiftCipher.encode(super, 3)
    end
end