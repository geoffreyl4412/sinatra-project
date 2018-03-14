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
"Castle in the Sky" => "https://ghibliapi.herokuapp.com/films/2baf70d1-42bb-4437-b551-e5fed5a87abe",
"Grave of the Fireflies" => "https://ghibliapi.herokuapp.com/films/12cfb892-aac0-4c5b-94af-521852e46d6a",
"My Neighbor Totoro" => "https://ghibliapi.herokuapp.com/films/58611129-2dbc-4a81-a72f-77ddfc1b1b49",
"Kiki's Delivery Service" => "https://ghibliapi.herokuapp.com/films/ea660b10-85c4-4ae3-8a5f-41cea3648e3e",
"Only Yesterday" => "https://ghibliapi.herokuapp.com/films/4e236f34-b981-41c3-8c65-f8c9000b94e7",
"Porco Rosso" => "https://ghibliapi.herokuapp.com/films/ebbb6b7c-945c-41ee-a792-de0e43191bd8",
"Pom Poko" => "https://ghibliapi.herokuapp.com/films/1b67aa9a-2e4a-45af-ac98-64d6ad15b16c",
"Whisper of the Heart" => "https://ghibliapi.herokuapp.com/films/ff24da26-a969-4f0e-ba1e-a122ead6c6e3",
"Princess Mononoke" => "https://ghibliapi.herokuapp.com/films/0440483e-ca0e-4120-8c50-4c8cd9b965d6",
"My Neighbors the Yamadas" => "https://ghibliapi.herokuapp.com/films/45204234-adfd-45cb-a505-a8e7a676b114",
"Spirited Away" => "https://ghibliapi.herokuapp.com/films/dc2e6bd1-8156-4886-adff-b39e6043af0c",
"The Cat Returns" => "https://ghibliapi.herokuapp.com/films/90b72513-afd4-4570-84de-a56c312fdf81",
"Tales from Earthsea" => "https://ghibliapi.herokuapp.com/films/112c1e67-726f-40b1-ac17-6974127bb9b9",
"Ponyo" => "https://ghibliapi.herokuapp.com/films/758bf02e-3122-46e0-884e-67cf83df1786",
"Arrietty" => "https://ghibliapi.herokuapp.com/films/2de9426b-914a-4a06-a3a0-5e6d9d3886f6",
"From Up on Poppy Hill" => "https://ghibliapi.herokuapp.com/films/45db04e4-304a-4933-9823-33f389e8d74d",
"The Wind Rises" => "https://ghibliapi.herokuapp.com/films/67405111-37a5-438f-81cc-4666af60c800",
"The Tale of the Princess Kaguya" => "https://ghibliapi.herokuapp.com/films/578ae244-7750-4d9f-867b-f3cd3d6fecf4",
"When Marnie Was There" => "https://ghibliapi.herokuapp.com/films/5fdfb320-2a02-49a7-94ff-5ca418cae602", 
"Howl's Moving Castle" => "https://ghibliapi.herokuapp.com/films/cd3d059c-09f4-4ff3-8d63-bc765a5184fa"
}

link = ""

def pass_film(user_title)
  films.each do |film_title|
    if user_title == film_name
      films["url"] >> link
    else
      nil
    end
  end 
  films
end

def get_film_info(film_title)
  
  url = puts film["url"] 
  
  # url = 'https://ghibliapi.herokuapp.com/films'
  
  uri = URI(url)
  response = Net::HTTP.get(uri)
  film = JSON.parse(response)
  puts film["title"]
  puts film["description"]
  puts film["director"]
  puts film["producer"]
  puts film["release_date"]
  puts film["rt_score"]

end