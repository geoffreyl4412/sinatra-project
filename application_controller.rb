require 'dotenv/load'
require 'bundler'
require 'pp'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    
    erb :index
    
  end
  
  
  post '/result' do

    film_title = params[:film_title]
    @user_film = title_to_id(film_title)
    erb :result
    
  end
  
end
  

