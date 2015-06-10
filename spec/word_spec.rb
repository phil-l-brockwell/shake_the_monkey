require 'word'

describe 'word' do
  let(:test_word) { Word.new('test') }

  it 'is initialised with a text variable' do
    expect(test_word.text).to eq(:test)
  end

  it 'knows how many times it has been searched' do
    expect(test_word.searched_for).to eq(0)
  end

  it 'can increment its searches' do
    test_word.add_search
    expect(test_word.searched_for).to eq(1)
  end
end
