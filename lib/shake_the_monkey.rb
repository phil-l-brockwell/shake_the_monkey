class Shake_the_monkey

  attr_reader :words, :blank_spaces

  def initialize(string)
    @words = string.split
    @blank_spaces = string.split('').count(' ')
  end

  def search_for(word)
    @words.include? word
  end

  def add_blanks
    @blank_spaces.times { @words << ' ' }
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
