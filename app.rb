require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"


class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]),Player.new(params[:player_2_name]))
    redirect "/play"
  end

  get '/play' do
    #p $game.complete?
    @game = $game
    if $game.complete?
      erb :complete
    else
      erb :play
    end
    # erb :play
  end

  get '/switch-turn' do
    $game.switch_attacked
    redirect "/play"
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.get_current_attacked)
    erb :attack
  end

  run! if app_file==$0
end
