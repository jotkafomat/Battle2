require 'sinatra/base'

class Battle < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:index)
    end

    post '/names' do
        session[:Player_1_Name] = params[:Player_1_Name]
        session[:Player_2_Name] = params[:Player_2_Name]
        redirect to('/play')
    end

    get '/play' do
        @player_1 = session[:Player_1_Name]
        @player_2 = session[:Player_2_Name]
        erb(:play)
    end

    post '/confirmation' do
      erb(:confirmation)
    end

    run! if app_file == $0
end
