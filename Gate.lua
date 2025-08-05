local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/pseudonym101/RBX/main/list.lua"))()

local URL = Games[game.PlaceId]

if URL then
  loadstring(game:HttpGet(URL))()
end
