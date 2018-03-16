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

    film_info_type = params[:film_info_type]
    @film_info = get_film_info(film_info_type)
    erb :result
    
  end
  
end
  

