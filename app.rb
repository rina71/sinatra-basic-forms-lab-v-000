require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    erb :create_puppy
  end

  get '/NEW' do
    erb :create_puppy
  end

  post '/NEW' do
    @puppy = Puppy.new(params[:name],params[:breed],params[:age])

    erb :display_puppy
  end

end
