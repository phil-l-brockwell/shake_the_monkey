# Search class used to hold search string and number of times searched
class Word
  attr_reader :text, :searched_for

  def initialize(text)
    @text = text.to_sym
    @searched_for = 0
  end

  def add_search
    @searched_for += 1
  end
end
