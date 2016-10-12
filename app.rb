require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $P1Name = Player.new(params[:P1Name])
    $P2Name = Player.new(params[:P2Name])
    redirect '/play'
  end

  get '/play' do
    @P1Name = $P1Name.name
    @P2Name = $P2Name.name
    @P1hp = $P1Name.hp
    @P2hp = $P2Name.hp
    erb :play
  end

  get '/attack' do
    @P1Name = $P1Name.name
    @P2Name = $P2Name.name
    @P1hp = $P1Name.hp
    @P2hp = $P2Name.hp
    @P2hp-=10
    erb :attack
  end

  run! if app_file == $0
end
