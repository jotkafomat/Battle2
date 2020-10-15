require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:index)
    end

    post '/names' do
        $p1 = Player.new(params[:Player_1_Name])
        $p2 = Player.new(params[:Player_2_Name])
        redirect to('/play')
    end

    get '/play' do
        @player_1 = $p1.name
        @player_2 = $p2.name
        @p2hp = $p2.hp
        erb(:play)
    end

    post '/confirmation' do
      @player_1 = $p1.name
      @player_2 = $p2.name
      $p1.attack($p2)
      @p2hp = $p2.hp
      erb(:confirmation)
    end

    run! if app_file == $0
end
