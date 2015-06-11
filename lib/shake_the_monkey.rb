# Main class
class ShakeTheMonkey
  attr_reader :words, :blank_spaces

  def initialize(string)
    @words = string.split.map { |word| normalise(word) }
    @blank_spaces = string.split('').count ' '
  end

  def search_for(word)
    word.add_search
    word.mark_as_found if @words.include? word.text
  end

  def shuffle_words
    chars = split_into_chars @words
    chars_with_blanks = add_blanks chars
    shuffled_chars = shuffle_chars chars_with_blanks
    @words = convert_to_strings shuffled_chars
  end

  def add_blanks(array_of_chars)
    @blank_spaces.times { array_of_chars << ' ' }
    array_of_chars
  end

  def split_into_chars(array_of_words)
    array_of_words.join.split ''
  end

  def shuffle_chars(array_of_chars)
    array_of_chars.shuffle
  end

  def convert_to_strings(array_of_chars)
    array_of_chars.join.split
  end

  def normalise(string)
    string.gsub(/\W/, '').downcase
  end
end
