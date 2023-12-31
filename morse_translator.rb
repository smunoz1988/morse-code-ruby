morse_characters = {
  'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', 'e' => '.',
  'f' => '..-.', 'g' => '--.', 'h' => '....', 'i' => '..', 'j' => '.---',
  'k' => '-.-', 'l' => '.-..', 'm' => '--', 'n' => '-.', 'o' => '---',
  'p' => '.--.', 'q' => '--.-', 'r' => '.-.', 's' => '...', 't' => '-',
  'u' => '..-', 'v' => '...-', 'w' => '.--', 'x' => '-..-', 'y' => '-.--', 'z' => '--..',
  '1' => '.----', '2' => '..---', '3' => '...--', '4' => '....-', '5' => '.....',
  '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.', '0' => '-----'
}

def decode_char(letter, array)
  array.map do |key, val|
    return key.upcase if val == letter
  end
end

puts decode_char('.-', morse_characters)

def decode_word(word, array)
  word.split.map do |letter|
    decode_char(letter, array)
  end.join
end

puts decode_word('-- -.--', morse_characters)

def decode(message, morse_characters)
  message.split('   ').map do |word|
    decode_word(word, morse_characters)
  end.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...', morse_characters)
