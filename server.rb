require 'sinatra'
require_relative './lib/shake_the_monkey.rb'
require_relative './lib/complete_works.rb'
require_relative './lib/word.rb'

enable :sessions

shake = ShakeTheMonkey.new(SWORDS)
word = Word.new

get '/' do
  erb :index
end

post '/new_search' do
  shake.shuffle_words
  word.add_text(params[:search]) unless word.text
  
  if shake.search_for word
    @message = 'Found it'
  else
    @message = 'Not this time...'
  end

  @word = word
  @words = shake.words.first(50)
  erb :index

end
