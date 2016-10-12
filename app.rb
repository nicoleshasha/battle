require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $P1 = Player.new(params[:P1Name])
    $P2 = Player.new(params[:P2Name])
    redirect '/play'
  end

  get '/play' do
    @P1 = $P1
    @P2 = $P2
    erb :play
  end

  get '/attack' do
    @P1 = $P1
    @P2 = $P2
    @P1.attack(@P2)
    erb :attack
  end

  run! if app_file == $0
end
