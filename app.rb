require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    session[:P1Name] = params[:P1Name]
    session[:P2Name] = params[:P2Name]
    redirect '/play'
  end

  get '/play' do
    @P1Name = session[:P1Name]
    @P2Name = session[:P2Name]
    erb :play
  end

  run! if app_file == $0
end
