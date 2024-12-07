=begin
Implement a Caesar cipher that takes in a string and the shift factor and then outputs the modified string using a right shift:
  > caesar_cipher("What a stringw!", 5)
  => "Bmfy f Sywnslb!"
=end

def caesar_cipher(string, shift)
  lowers = ('a'..'z').to_a
  capitals = ('A'..'Z').to_a

  result = string.split('').map do |letter|
    if letter.between?('a', 'z')
      index = lowers.find_index(letter)
      new_index = index + shift
      new_index = new_index - 26 if new_index > 25
      letter = lowers[new_index]
    elsif letter.between?('A', 'Z')
      index = capitals.find_index(letter)
      new_index = index + shift
      new_index = new_index - 26 if new_index > 25
      letter = capitals[new_index]
    else
      letter
    end
  end

  result.join
end

puts caesar_cipher("What a Stringz!", 1)
