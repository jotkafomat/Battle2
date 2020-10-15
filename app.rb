require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:index)
    end

    post '/names' do
        $p1name = Player.new(params[:Player_1_Name])
        $p2name = Player.new(params[:Player_2_Name])
        redirect to('/play')
    end

    get '/play' do
        @player_1 = $p1name.name
        @player_2 = $p2name.name
        erb(:play)
    end

    post '/confirmation' do
      @player_1 = $p1name.name
      @player_2 = $p2name.name
      erb(:confirmation)
    end

    run! if app_file == $0
end
