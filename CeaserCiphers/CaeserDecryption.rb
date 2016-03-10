=begin

VARIABLES
---------------
randomInt
shiftDistance
regularAlphabet
shiftAlphabet
userString
userStringShifted


1 - Figure out number of shifts and declare the shifter
o - declare a variable named shiftDistance for shifter and store a random number inside named randomInt
o - establish array of letters for regular alphabet named regularAlphabet
o - establish array of letters for shifted alphabet named shiftAlphabet
o - use a for loop to arrange the alphabet based upon how many letters it shifted

2 - Take a string from the user
o - take a string from the user and assign it to a string variable named userString to hold it


3 - Use the declared shifter on the string from the user
o - check where the letter that matches the substring in the userString is in the shiftedAlphabet
o - take the userString and begin to arrange it by comparing it to the regularAlphabet by grabbing the location
                             of where the original letter was versus where the new letter is in the shiftAlphabet
o - establish shift distance after comparing the regularAlphabet to the shiftedAlphabet and finding the distance
                             of how far they are apart letter wise
o - assign userStringShifted to the result of the previous

4 - Output the shifted string
o - output the userStringShifted to complete the full iteration


=end

class CaeserDecryption

  random_int = rand(25)
  shift_distance = random_int
  regular_alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j","k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  shifted_alphabet = Array(26);

  case shift_distance
    when 0
      shifted_alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j","k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    when 1
      shifted_alphabet = ["b", "c", "d", "e", "f", "g", "h", "i", "j","k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a"]
    when 2
      shifted_alphabet = ["c", "d", "e", "f", "g", "h", "i", "j","k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b"]
    when 3
      shifted_alphabet = ["d", "e", "f", "g", "h", "i", "j","k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c"]
    when 4
      shifted_alphabet = ["e", "f", "g", "h", "i", "j","k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d"]
    when 5
      shifted_alphabet = ["f", "g", "h", "i", "j","k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e"]
    when 6
      shifted_alphabet = ["g", "h", "i", "j","k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f"]
    when 7
      shifted_alphabet = ["h", "i", "j","k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g"]
    when 8
      shifted_alphabet = ["i", "j","k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h"]
    when 9
      shifted_alphabet = ["j", "k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i"]
    when 10
      shifted_alphabet = ["k", "l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    when 11
      shifted_alphabet = ["l", "m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]
    when 12
      shifted_alphabet = ["m", "n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"]
    when 13
      shifted_alphabet = ["n", "o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
    when 14
      shifted_alphabet = ["o", "p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n"]
    when 15
      shifted_alphabet = ["p","q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o"]
    when 16
      shifted_alphabet = ["q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p"]
    when 17
      shifted_alphabet = ["r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q"]
    when 18
      shifted_alphabet = ["s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r"]
    when 19
      shifted_alphabet = ["t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s"]
    when 20
      shifted_alphabet = ["u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t"]
    when 21
      shifted_alphabet = ["v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u"]
    when 22
      shifted_alphabet = ["w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v"]
    when 23
      shifted_alphabet = ["x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w"]
    when 24
      shifted_alphabet = ["y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x"]
    when 25
      shifted_alphabet = ["z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y"]
  end


  print "Enter a string to have it turned into Caeser Cypher of "+shift_distance.to_s+" >> "
  user_string = gets.to_s

  length_of_string = user_string.length

  i = 0

  length_of_string.times do

  user_string[i] = user_string[i].downcase

  case user_string[i]
    when "a"
      user_string[i] = shifted_alphabet[0]
    when "b"
      user_string[i] = shifted_alphabet[1]
    when "c"
      user_string[i] = shifted_alphabet[2]
    when "d"
      user_string[i] = shifted_alphabet[3]
    when "e"
      user_string[i] = shifted_alphabet[4]
    when "f"
      user_string[i] = shifted_alphabet[5]
    when "g"
      user_string[i] = shifted_alphabet[6]
    when "h"
      user_string[i] = shifted_alphabet[7]
    when "i"
      user_string[i] = shifted_alphabet[8]
    when "j"
      user_string[i] = shifted_alphabet[9]
    when "k"
      user_string[i] = shifted_alphabet[10]
    when "l"
      user_string[i] = shifted_alphabet[11]
    when "m"
      user_string[i] = shifted_alphabet[12]
    when "n"
      user_string[i] = shifted_alphabet[13]
    when "o"
      user_string[i] = shifted_alphabet[14]
    when "p"
      user_string[i] = shifted_alphabet[15]
    when "q"
      user_string[i] = shifted_alphabet[16]
    when "r"
      user_string[i] = shifted_alphabet[17]
    when "s"
      user_string[i] = shifted_alphabet[18]
    when "t"
      user_string[i] = shifted_alphabet[19]
    when "u"
      user_string[i] = shifted_alphabet[20]
    when "v"
      user_string[i] = shifted_alphabet[21]
    when "w"
      user_string[i] = shifted_alphabet[22]
    when "x"
      user_string[i] = shifted_alphabet[23]
    when "y"
      user_string[i] = shifted_alphabet[24]
    when "z"
      user_string[i] = shifted_alphabet[25]
  end

  i= 1+i
  end

  puts user_string.to_s
  #puts user_string[0]
  #puts shifted_alphabet.to_ary
end