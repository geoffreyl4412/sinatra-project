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


films = {
"Castle in the Sky" => "2baf70d1-42bb-4437-b551-e5fed5a87abe",
"Grave of the Fireflies" => "12cfb892-aac0-4c5b-94af-521852e46d6a",
"My Neighbor Totoro" => "58611129-2dbc-4a81-a72f-77ddfc1b1b49",
"Kiki's Delivery Service" => "films/ea660b10-85c4-4ae3-8a5f-41cea3648e3e",
"Only Yesterday" => "films/4e236f34-b981-41c3-8c65-f8c9000b94e7",
"Porco Rosso" => "films/ebbb6b7c-945c-41ee-a792-de0e43191bd8",
"Pom Poko" => "1b67aa9a-2e4a-45af-ac98-64d6ad15b16c",
"Whisper of the Heart" => "ff24da26-a969-4f0e-ba1e-a122ead6c6e3",
"Princess Mononoke" => "0440483e-ca0e-4120-8c50-4c8cd9b965d6",
"My Neighbors the Yamadas" => "45204234-adfd-45cb-a505-a8e7a676b114",
"Spirited Away" => "dc2e6bd1-8156-4886-adff-b39e6043af0c",
"The Cat Returns" => "90b72513-afd4-4570-84de-a56c312fdf81",
"Tales from Earthsea" => "112c1e67-726f-40b1-ac17-6974127bb9b9",
"Ponyo" => "758bf02e-3122-46e0-884e-67cf83df1786",
"Arrietty" => "2de9426b-914a-4a06-a3a0-5e6d9d3886f6",
"From Up on Poppy Hill" => "45db04e4-304a-4933-9823-33f389e8d74d",
"The Wind Rises" => "67405111-37a5-438f-81cc-4666af60c800",
"The Tale of the Princess Kaguya" => "578ae244-7750-4d9f-867b-f3cd3d6fecf4",
"When Marnie Was There" => "5fdfb320-2a02-49a7-94ff-5ca418cae602", 
"Howl's Moving Castle" => "cd3d059c-09f4-4ff3-8d63-bc765a5184fa"
}



# replace the empty id with a value from the hash films. hash films uses the film id's  to put into the url to parse the json into a usable ruby format. EX user types in a title of a film the method takes in what the user wrote identifys it and then uses that value as the url 


# given user_title and films hash, retrieve id based on user's title
def title_to_id(user_title,film_list)
  film_list[user_title]
end

puts title_to_id("Castle in the Sky",films)

def get_film_info(film_id)
  # url = @link
        
  url = 
        
  uri = URI(url)
  response = Net::HTTP.get(uri)
  film = JSON.parse(response.body)
  puts film["title"]
  puts film["description"]
  puts film["director"]
  puts film["producer"]
  puts film["release_date"]
  puts film["rt_score"]
end


#https://stackoverflow.com/questions/2835559/parsing-values-from-a-json-file?rq=1