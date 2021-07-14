function kitpvp:map/fetch-map-info
function kitpvp:gamemode/fetch-gamemode-info

scoreboard players set gamemodeSupported info 0
scoreboard players set playersReady info 0

execute if score gamemode info matches 1 if data storage current-map Map.Gamemodes.1 run scoreboard players set gamemodeSupported info 1
execute if score gamemode info matches 2 if data storage current-map Map.Gamemodes.2 run scoreboard players set gamemodeSupported info 1

execute store result score playersReady info if entity @a[scores={ready=1}]

execute if score gamemodeSupported info matches 1 if score playersReady info matches 2.. if score gamemodeActive info matches 0 run function kitpvp:map/load-unload/clone-map

execute if score gamemodeSupported info matches 0 run tellraw @a[scores={ready=1}] {"text":"The Map selected does not support this Gamemode.","color": "red"}
execute if score playersReady info matches ..1 run tellraw @a[scores={ready=1}] {"text":"At least 2 Players are required to start.","color": "red"}
execute if score gamemodeActive info matches 1 run tellraw @a[scores={ready=1},tag=!inGame] {"text":"A game is already running.","color": "red"}
