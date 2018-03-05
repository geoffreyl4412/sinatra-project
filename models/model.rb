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

class Film
    
  attr_reader :name, :director, :producer, :des 
    
    def initialize(name,director,producer,description)
        @name = name
        @director = director
        @producer = producer
        @description = description
    end

end

# class Ghibli
    
#   attr_
    
#     def initialize(title)
#         @title = title
#     end

# end