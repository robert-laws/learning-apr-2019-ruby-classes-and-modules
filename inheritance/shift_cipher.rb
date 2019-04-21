class ShiftCipher
  @@alphabet = [*'a'..'z']

  def self.encode(plain_string, shift_number)
    working_string = plain_string.downcase.split('')
    encoded_string = working_string.map do |letter|
      if(@@alphabet.include?(letter))
        index = @@alphabet.find_index(letter) + 3
        if index == 27
          index = 1
        elsif index == 28
          index = 2
        elsif index == 29
          index = 3
        end
        @@alphabet[index]
      else
        ' '
      end
    end
    encoded_string.join('')
  end

  def self.decode(cipher_string, shift_number)

  end

  def letter
    @@alphabet.sample
  end
end

# Array#map
# Array#include?
# Array#find_index
# Array#join