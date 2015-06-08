require 'sinatra'

require_relative './lib/shake_the_monkey.rb'
require_relative './lib/complete_works.rb'

# @test = ShakeTheMonkey.new(SWORDS)

get '/' do
  @test = 'empty'
  erb :index
end

post '/new_search' do
  @test = params[:search]
  erb :index
end
