require 'sinatra'

require_relative './lib/shake_the_monkey.rb'
require_relative './lib/complete_works.rb'

get '/' do
  @shake = ShakeTheMonkey.new(SWORDS)
  @words = @shake.words.first(50)
  erb :index
end

post '/new_search' do
  @test = params[:search]
  erb :index
end
