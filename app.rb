require 'sinatra/base'

class Battle < Sinatra::Base
    get '/' do
        erb(:index)
    end

    post '/names' do
        @player_1 = params[:Player_1_Name]
        @player_2 = params[:Player_2_Name]
        erb(:play)
    end
    run! if app_file == $0
end