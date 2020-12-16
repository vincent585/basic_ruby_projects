class Cipher
  def caesar_cipher(string, shift_factor)
    character_values = string.split('').map do |char|
      if /\W/ =~ char
        char
      else
        offset = char =~ /[A-Z]/ ? 65 : 97
        (((char.ord - offset + shift_factor) % 26) + offset).chr
      end
    end

    character_values.join
  end
end
