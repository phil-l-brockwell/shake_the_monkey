# Search class used to hold search string and number of times searched
class Word
  attr_reader :text, :searched_for

  def initialize
    @searched_for = 0
  end

  def add_text(string)
    @text = string
  end

  def add_search
    @searched_for += 1
  end
end
