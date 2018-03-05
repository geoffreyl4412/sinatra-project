# https://ghibliapi.herokuapp.com/films
# hash of each film

require 'net/http'
require 'json'
require 'pp'
 
url = 'https://ghibliapi.herokuapp.com/films'
uri = URI(url)
response = Net::HTTP.get(uri)
film = JSON.parse(response)

puts film[0]["title"]
puts film[0]["description"]
puts film[0]["director"]
puts film[0]["producer"]

# class Ghibli
    
#   attr_
    
#     def initialize(title)
#         @title = title
#     end

# end