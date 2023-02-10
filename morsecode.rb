# Morser Code
MORSE_CODE = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..',
  '0' => '-----',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  ' ' => ' '
}.freeze

def decode_char(string)
  words = string.split(' ')
  decoded_words = []

  words.each do |word|
    decoded_word = ''
    letters = word.split(' ')
    letters.each do |letter|
      decoded_word + MORSE_CODE.key(letter)
    end
    decoded_words << decoded_word
  end
  decoded_words.join(' ')
end

puts decode_char('.-. ..- -... -.--   --- -.   .-. .- .. .-.. ...')
