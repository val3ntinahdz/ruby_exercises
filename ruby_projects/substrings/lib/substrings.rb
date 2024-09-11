# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
def substrings(word, dictionary)
  dictionary = dictionary.map(&:downcase)
  word = word.downcase
  # create an empty hash to store the keys and values of the found substrings
  substrings = {}
  dictionary.each do |dic|
    substrings[dic] = word.scan(dic).length if word.include?(dic) # check if the word includes the substring
  end
  substrings
end

# Test cases
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings('below', dictionary)

# Expected output
# {"below"=>1, "down"=>1, "go"=>1, "going"=>1, "how"=>1, "howdy"=>1, "it"=>1, "i"=>1, "low"=>1, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}

the_office = %w[ michael scott dwight jim pam ryan andy kevin angela oscar meredith michael ]
puts substrings('michael scott dwight jim pam ryan andy kevin angela oscar meredith michael jim pam pam pam', the_office)

# Expected output
# {"michael"=>2, "scott"=>1, "dwight"=>1, "jim"=>2, "pam"=>4, "ryan"=>1, "andy"=>1, "kevin"=>1, "angela"=>1, "oscar"=>1, "meredith"=>1}

cool_movies = %w[ interestellar dark_knight lalaland the_social_network oppenheimer whiplash lalaland lalaland charade charade ]
puts substrings('interestellar dark_knight lalaland the_social_network oppenheimer whiplash lalaland lalaland charade charade', cool_movies)

# Expected output
# {"interestellar"=>1, "dark_knight"=>1, "lalaland"=>3, "the_social_network"=>1, "oppenheimer"=>1, "whiplash"=>1, "charade"=>2}
