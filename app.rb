require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do 
    text = PigLatinizer.new
    @pig_latin = text.piglatinize(params[:user_phrase])
    
    erb :pig_latin
  end
end