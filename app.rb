require "sinatra/base"

class Battle < Sinatra::Base

  get "/test" do
    'Testing infrastructure working!'
  end

  get "/" do
    erb(:index)
  end

  post '/names' do
    get /play
  end

  get '/play'
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end

  post '/play'
  end

  run! if app_file==$0
end
