class Shake_the_monkey

  attr_reader :words, :blank_spaces

  def initialize(string)
    @words = string.split
    @blank_spaces = string.split('').count(' ')
  end

  def search_for(word)
    shuffle_words
    i = 1
    while !@words.include? word
      puts i
      i += 1
      shuffle_words
    end
    puts "Found #{word}"
  end

  def shuffle_words
    chars = split_into_chars(@words)
    chars_with_blanks = add_blanks(chars)
    shuffled_chars = shuffle_chars(chars_with_blanks)
    @words = convert_to_strings(shuffled_chars)
  end

  def add_blanks(array_of_chars)
    @blank_spaces.times { array_of_chars << ' ' }
    array_of_chars
  end

  def split_into_chars(array_of_words)
    array_of_words.join.split('')
  end

  def shuffle_chars(array_of_chars)
    array_of_chars.shuffle
  end

  def convert_to_strings(array_of_chars)
    array_of_chars.join.split
  end
end
