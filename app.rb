require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        piglatinizer = PigLatinizer.new
        @piglatin = piglatinizer.piglatinize(params[:user_phrase])
        erb :piglatinized
    end
end