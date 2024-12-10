# Implement a Caesar cipher that takes in a string and the shift factor and then outputs the modified string using a right shift:
#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

def caesar_cipher(string, shift)
  lowers = ('a'..'z').to_a
  capitals = ('A'..'Z').to_a

  result = string.split('').map do |letter|
    if lowers.include?(letter)
      index = lowers.find_index(letter)
      new_index = index + shift <= 26 ? index + shift : index + shift - 26
      lowers[new_index]
    elsif capitals.include?(letter)
      index = capitals.find_index(letter)
      new_index = index + shift <= 26 ? index + shift : index + shift - 26
      capitals[new_index]
    else
      letter
    end
  end
  result.join
end

puts caesar_cipher('What a string!', 5)
puts 'Bmfy f xywnsl!'
