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
    
    film = params[:film_name]
    @user_film = get_film_info(film)
    # puts params
    erb :result
  end
  
end
  

