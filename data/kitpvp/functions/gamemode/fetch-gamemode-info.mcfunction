data merge storage current-gamemode {Gamemode:{Id:0,Name:"",Teams:false,Settings:{}}}

execute if score gamemode info matches 0 run data modify storage current-gamemode Gamemode set from storage gamemode-00
execute if score gamemode info matches 1 run data modify storage current-gamemode Gamemode set from storage gamemode-01
execute if score gamemode info matches 2 run data modify storage current-gamemode Gamemode set from storage gamemode-02
execute if score gamemode info matches 3 run data modify storage current-gamemode Gamemode set from storage gamemode-03
execute if score gamemode info matches 4 run data modify storage current-gamemode Gamemode set from storage gamemode-04
execute if score gamemode info matches 5 run data modify storage current-gamemode Gamemode set from storage gamemode-05
