data merge storage current-gamemode {Gamemode:{Id:0,Name:"",Settings:{}}}

execute if score gamemode info matches 1 run data modify storage current-gamemode Gamemode set from storage gamemode-01
