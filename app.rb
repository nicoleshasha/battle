require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:P1Name])
    player_2 = Player.new(params[:P2Name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.target_player)
    erb :attack
  end

  run! if app_file == $0
end
