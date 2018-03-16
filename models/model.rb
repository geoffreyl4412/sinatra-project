require 'net/http'
require 'json'

def get_film_info(info_type)

  url = 'https://ghibliapi.herokuapp.com/films/cd3d059c-09f4-4ff3-8d63-bc765a5184fa' #A certain link being grab from inside the API link
  uri = URI(url) #uri is collecting the URI of the uri variable
  response = Net::HTTP.get(uri) #The response is collecting the Net HTTP and is getting the uri
  film = JSON.parse(response) #The film is then collecting the link variable from the JSON.parse to the resposne
  
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

