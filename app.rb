require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @P1Name = params[:P1Name]
    @P2Name = params[:P2Name]
    erb :play
  end


  run! if app_file == $0
end
