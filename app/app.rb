ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require_relative 'data_mapper_setup'

class Bookmark_manager < Sinatra::Base

  enable :sessions

  get '/links/new' do
    erb(:'links/new')
  end

  get '/links' do
    @user = session['email']
    @links = Link.all
    erb(:'links/links')
  end

  post '/links' do
    link = Link.new(:title => params[:title], :url => params[:url])

    tag_table = []
    tag_array = params[:tag].split(",").each {|array_item| tag_table << Tag.first_or_create(:name => array_item)}
    tag_table.each { |array_item| link.tags << array_item }

    link.save
    redirect '/links'
  end

  get '/tags/:name' do
    tag = Tag.first(name: params[:name])
    @links = tag ? tag.links : []
    erb :'links/links'
  end

  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    p params
    session['email'] = params[:email]
    redirect'/links'

  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
