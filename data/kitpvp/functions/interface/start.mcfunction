function kitpvp:map/fetch-map-info
function kitpvp:gamemode/fetch-gamemode-info

scoreboard players set gamemodeSupported info 0
scoreboard players set playersReady info 0

execute if score gamemode info matches 1 if data storage current-map Map.Gamemodes.1 run scoreboard players set gamemodeSupported info 1
execute store result score playersReady info if entity @a[scores={readyDisplay=1}]

execute if score gamemodeSupported info matches 1 if score playersReady info matches 2.. run function kitpvp:interface/private/countdown

execute if score gamemodeSupported info matches 0 run tellraw @s {"text":"The Map you selected does not support this Gamemode!","color": "red"}
execute if score playersReady info matches ..1 run tellraw @s {"text":"You need at least 2 players to start a game.","color": "red"}