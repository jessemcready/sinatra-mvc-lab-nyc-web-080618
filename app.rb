require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_latin = PigLatinizer.new
    @new_string = pig_latin.piglatinize(params[:user_phrase])
    erb :piglatinize_phrase
  end

end
