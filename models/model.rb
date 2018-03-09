# https://ghibliapi.herokuapp.com/films
# hash of each film

require 'net/http'
require 'json'
require 'pp'
 
# url = 'https://ghibliapi.herokuapp.com/films'
# uri = URI(url)
# response = Net::HTTP.get(uri)
# film = JSON.parse(response)

# puts film[0]["title"]
# puts film[0]["description"]
# puts film[0]["director"]
# puts film[0]["producer"]


def get_film_info(film_title)
  url = 'https://ghibliapi.herokuapp.com/films'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  film = JSON.parse(response)
  result["id"]#Should this be able to work? Adding in other part of the file inside list
  # if film_title == film[0]["title"]
  #   @director = film[0]["director"]
  # end
end

# class Film
    
#   attr_reader :film
    
#     def initialize(film)
#         @film = film
#     end

# end






