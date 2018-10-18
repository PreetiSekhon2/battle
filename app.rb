require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"


class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1_name]),Player.new(params[:player_2_name]))
    redirect "/play"
  end

  get '/play' do
    if @game.complete?
      erb :complete
    else
      @currentturn = @game.get_current_attacked
      erb :play
    end
  end

  get '/switch-turn' do
    @game.switch_turn if !@game.paralyse?
    redirect "/play"
  end

  post '/attack' do
    @game.attack(@game.get_current_attacked,params[:move],params[:paralyse])
    p params[:paralyse]
    erb :attack
  end

  run! if app_file==$0
end
