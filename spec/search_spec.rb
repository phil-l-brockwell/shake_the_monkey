require 'search'

describe 'search' do
  let(:test_search) { Search.new('test') }

  it 'is initialised with a text variable' do
    expect(test_search.text).to eq('test')
  end

  it 'knows how many times it has been searched' do
    expect(test_search.searches).to eq(0)
  end

  it 'can increment its searches' do
    test_search.increment_search
    expect(test_search.searches).to eq(1)
  end
end
