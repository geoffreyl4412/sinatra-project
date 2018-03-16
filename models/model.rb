require 'net/http'
require 'json'

def get_film_info(info_type)
  url = 'https://ghibliapi.herokuapp.com/films/cd3d059c-09f4-4ff3-8d63-bc765a5184fa' #A certain link being grab from inside the API link
  uri = URI(url)
  response = Net::HTTP.get(uri)
  film = JSON.parse(response)
  
  puts film["title"] #This is the title that we want to see on the result
  puts film["description"] #This is the description that we want to see on the result
  puts film["director"] #This is the director that we want to see on the result
  puts film["producer"] #This is the producer that we want to see on the result
  puts film["release_date"] #This is the release_date that we want to see on the result
  puts film["rt_score"] #This is the rt_score that we want to see on the result
end

# class Ghibli
#   attr_reader :film_name
#   def initialize(film_name)
#     @film_name = film_name
#   end
# end 

# puts get_film_info("description")

