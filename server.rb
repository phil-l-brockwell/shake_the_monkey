require 'sinatra'
require_relative './lib/shake_the_monkey.rb'
require_relative './lib/complete_works.rb'

shake = ShakeTheMonkey.new(SWORDS)

get '/' do
  @words = shake.words.first(50)
  erb :index
end

post '/new_search' do
  shake.shuffle_words
  @words = shake.words.first(50)
  word = params[:search]
  
  until shake.search_for word
    shake.shuffle_words
    @words = shake.words.first(50)
    @message = 'Not this time'
    erb :index
  end

  @words = shake.words.first(50)
  @message = 'Found it!'
  erb :index
end
