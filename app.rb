require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  
  get '/' do
    "Hello Battle"
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:p1])
    player_2 = Player.new(params[:p2])
    $game = Game.new(player_1, player_2) 
    redirect :play
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
     @game = $game
     @game.attack(@game.player_2)
     erb :attack
  end

# start the server if ruby file executed directly
run! if app_file == $0
end
