ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require './app/models/link'
require './app/models/data_mapper_setup.rb'

class Bookmark_manager < Sinatra::Base

  get '/' do
    redirect '/links'
  end

  get '/links/new' do
    erb(:'links/new')
  end

  get '/links' do
    @links = Link.all

    erb(:'links/index')
  end

  post '/links' do
    link = Link.create(:title => params[:title], :url => params[:url])
    tag = Tag.first_or_create(:tag => params[:tags])
    link.tags << tag
    link.save
    redirect '/links'

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
