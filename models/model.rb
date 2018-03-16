require 'net/http'
require 'json'

def get_film_info(info_type)
  url = 'https://ghibliapi.herokuapp.com/films/cd3d059c-09f4-4ff3-8d63-bc765a5184fa'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  film = JSON.parse(response)
  
  film["#{info_type}"] #These are the results that we want to see on the result
  
end

# puts get_film_info("description")
# class Ghibli
#   attr_reader :film_name, :result
#   def initialize(film_name)
#     @film_name = film_name
#   end
#   def get_name
#     begin 
    
#     rescue
#     @result = ["sorry that film isnt avaliable"]
#   end
# end 

# puts get_film_info("description")

