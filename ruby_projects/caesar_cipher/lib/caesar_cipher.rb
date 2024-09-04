# Welcome to the caesar cipher
# This is a simple encryption algorithm that shifts the letters of the alphabet by a fixed number of positions down the alphabet.
# 1. Create a method that takes in a string and a number as arguments
def caesar_cipher(string, number)
  alphabet = ('a'..'z').to_a
  num = number % 26
  encrypted_string = ""

  string.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      is_upper = char == char.upcase
      char = char.downcase
      idx = alphabet.index(char)
      char = (idx + num) % 26
      encryption = alphabet[char]
      encryption.upcase! if is_upper
      encrypted_string << encryption
    else
      encrypted_string << char
    end
  end

  encrypted_string
end

puts caesar_cipher("Hello, World!", 5)  # Should print "Mjqqt, Btwqi!"
puts caesar_cipher("def", -3)  # Print "abc"
puts caesar_cipher("What a string!", 5)
