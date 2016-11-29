require 'sinatra/base'

class BookMark < Sinatra::Base

  

  get '/' do
    erb :link
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
