def caesar_cipher(input_string, shift_factor)
    positions = input_string.unpack('C*')
    shifted_positions = positions.map do |pos|
      case pos
        when (65..90), (97..122)
          shifted = pos + (shift_factor % 26) # use % 26 to account for shift factors over 26
          if (shifted > 90 && shifted < 97) || (shifted > 122) # loop around
            shifted = shifted - 26
          end
          pos = shifted
        else
          pos # ignore non-alphabet chars
      end
    end
    result_string = shifted_positions.pack('C*')
    return result_string
  end
caesar_cipher("what a string", 5)