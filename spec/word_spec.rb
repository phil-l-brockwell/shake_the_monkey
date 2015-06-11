require 'word'

describe 'word' do
  let(:test_word) { Word.new }

  it 'can add new text' do
    test_word.add_text('test')
    expect(test_word.text).to eq('test')
  end

  it 'knows how many times it has been searched' do
    expect(test_word.searched_for).to eq(0)
  end

  it 'can increment its searches' do
    test_word.add_search
    expect(test_word.searched_for).to eq(1)
  end

  it 'can be marked as found' do
    test_word.mark_as_found
    expect(test_word.found).to eq(true)
  end
end
