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
    
    film = params[:film]
    @user_film_result = get_film_info(film)
    erb :result
    
  end
  
end
  

