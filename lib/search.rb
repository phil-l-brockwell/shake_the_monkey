# Search class used to hold search string and number of times searched
class Search
  attr_reader :text, :searches

  def initialize(text)
    @text = text
    @searches = 0
  end

  def increment_search
    @searches += 1
  end
end
