require 'sinatra/base'

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
    erb :play
  end

  get '/attack' do
    @P1Name = $P1Name.name
    @P2Name = $P2Name.name
    erb :attack
  end

  run! if app_file == $0
end
