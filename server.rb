require 'sinatra'
require_relative './lib/shake_the_monkey.rb'
require_relative './lib/complete_works.rb'
require_relative './lib/word.rb'

shake = ShakeTheMonkey.new(SWORDS)
word = Word.new

get '/' do
  erb :index
end

post '/new_search' do
  word = Word.new
  word.add_text(params[:search])
  redirect to '/new_search'
end

get '/new_search' do
  shake.shuffle_words
  
  if shake.search_for word
    @message = 'Found it'
  else
    @message = 'Not this time...'
  end

  @word = word
  @words = shake.words.first(50)
  erb :search
end
