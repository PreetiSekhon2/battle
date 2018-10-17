require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"


class Battle < Sinatra::Base
  $game = Game.new
  enable :sessions
  $player1 = nil
  $player2 = nil

  get "/test" do
    'Testing infrastructure working!'
  end

  get "/" do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect "/play"
  end

  get '/play' do
    $player1.show_name
    $player2.show_name
    erb :play
  end

  post '/play' do
    get "/test"
  end

  get '/attack' do
    $player1.show_name
    $player2.show_name
    $game.attack($player2)
    erb :attack
  end

  run! if app_file==$0
end
