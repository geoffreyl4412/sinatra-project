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
    
    movie_title = params[:movie_title]
    @user_movie_result = get_film_info(movie_title)
    erb :result
    
  end
  
end
  

