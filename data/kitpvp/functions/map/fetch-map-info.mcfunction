data remove storage current-map Map.Gamemodes
data merge storage current-map {Map:{Id:0,Name:"",Corner1:[0,0,0],Corner2:[0,0,0],Gamemodes:{}}}

execute if score map info matches 1 run data modify storage current-map Map set from storage map-01
