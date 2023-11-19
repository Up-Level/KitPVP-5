# Gamemodes below 0 don't exist
execute if score gamemode info matches ..-1 run return 0

execute store result storage __temp__ GamemodeId int 1 run scoreboard players get gamemode info
function kitpvp:gamemode/fetch-macro with storage __temp__
