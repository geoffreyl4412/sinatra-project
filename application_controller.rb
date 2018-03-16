require 'dotenv/load'
require 'bundler'
require 'pp'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
  
    erb :index#Should grab the index
    
  end
  
  
  post '/result' do

    film_info_type = params[:film_info_type] #The para, would be collected from the input into a params
    @film_info = get_film_info(film_info_type) #The @film_info is getting the id of the get_film_info def inside film type.
    erb :result #Should grab the result into output as posting it
    
  end
  
end
  

