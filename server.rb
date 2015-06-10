require 'sinatra'
require_relative './lib/shake_the_monkey.rb'
require_relative './lib/complete_works.rb'

shake = ShakeTheMonkey.new(SWORDS)

get '/' do
  erb :index
end

post '/new_search' do
  shake.shuffle_words
  @search = params[:search]
  
  if shake.search_for @search
    @message = 'Found it'
  else
    @message = 'Not this time...'
  end

  @words = shake.words.first(50)
  erb :index

end
