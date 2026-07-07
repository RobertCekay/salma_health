DICTIONARY_PATH = '/usr/share/dict/words'

def find_100_point_words
  words = File.readlines(DICTIONARY_PATH, chomp: true)

  words.select do |word|
    determine_value(word) == 100
  end
end

def determine_value(our_string)

  alpha = {
    '-': 0,
    'a': 1,
    'b': 2,
    'c': 3,
    'd': 4,
    'e': 5,
    'f': 6,
    'g': 7,
    'h': 8,
    'i': 9,
    'j': 10,
    'k': 11,
    'l': 12,
    'm': 13,
    'n':  14,
    'o': 15,
    'p': 16,
    'q': 17,
    'r': 18,
    's': 19,
    't': 20,
    'u': 21,
    'v': 22,
    'w': 23,
    'x': 24,
    'y': 25,
    'z': 26
  }

  value = 0

  our_string.each_char do |char|
    value = alpha[char.downcase.to_sym] + value
  end

  value
end

print find_100_point_words()