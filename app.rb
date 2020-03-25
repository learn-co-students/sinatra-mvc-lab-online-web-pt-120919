require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end 

    post '/piglatinize' do
        pl = PigLatinizer.new
        @pig_latin_text = pl.piglatinize(params[:user_phrase])
        erb :results
    end 
end