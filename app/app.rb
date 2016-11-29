require 'sinatra/base'
require_relative './models/link.rb'
class BookMark < Sinatra::Base



  get '/' do

  end

  get '/links/new' do
    erb :new_link
  end

  post '/links' do
    p params
    Link.create(:title => params[:title], :url => params[:url])
    @links = Link.all
    erb :links
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
