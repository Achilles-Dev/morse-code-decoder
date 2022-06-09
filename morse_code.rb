@morse_code = { A: '.-', B: '-...',
                C: '-.-.', D: '-..', E: '.',
                F: '..-.', G: '--.', H: '....',
                I: '..', J: '.---', K: '-.-',
                L: '.-..', M: '--', N: '-.',
                O: '---', P: '.--.', Q: '--.-',
                R: '.-.', S: '...', T: '-',
                U: '..-', V: '...-', W: '.--',
                X: '-..-', Y: '-.--', Z: '--..',
                '1': '.----', '2': '..---', '3': '...--',
                '4': '....-', '5': '.....', '6': '-....',
                '7': '--...', '8': '---..', '9': '----.',
                '0': '-----', ', ': '--..--', '.': '.-.-.-',
                '?': '..--..', '/': '-..-.', '-': '-....-',
                '(': '-.--.', ')': '-.--.-' }

@morse_code_invert = @morse_code.invert

def decode_char(char)
  @morse_code_invert[char]
end

def decode_word(word)
  @word_arr = word.split
  @result = ''
  @word_arr.each { |char| @result += decode_char(char).to_s }
  @result
end

def decode_message(message)
  @msg_arr = message.split('   ')
  @result = ''
  @msg_arr.each { |word| @result += " #{decode_word(word)}" }
  @result.strip
end

puts decode_char('.-')
puts decode_word('-- -.-- ')
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
