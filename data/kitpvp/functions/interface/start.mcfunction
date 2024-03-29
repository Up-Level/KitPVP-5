# Quick fix to close menu when game started
function kitpvp:interface/menus/main-menu/disable

function kitpvp:map/fetch-map-info
function kitpvp:gamemode/fetch-gamemode-info

scoreboard players set startingGamemode info 0
scoreboard players set gamemodeSupported info 0
scoreboard players set playersReady info 0

# Override for template gamemode
execute if score gamemode info matches 0 run scoreboard players set gamemodeSupported info 1

execute if score gamemode info matches 1 if data storage maps CurrentMap.Gamemodes.1 run scoreboard players set gamemodeSupported info 1
execute if score gamemode info matches 2 if data storage maps CurrentMap.Gamemodes.2 run scoreboard players set gamemodeSupported info 1
execute if score gamemode info matches 3 if data storage maps CurrentMap.Gamemodes.3 run scoreboard players set gamemodeSupported info 1
execute if score gamemode info matches 4 if data storage maps CurrentMap.Gamemodes.4 run scoreboard players set gamemodeSupported info 1
execute if score gamemode info matches 5 if data storage maps CurrentMap.Gamemodes.5 run scoreboard players set gamemodeSupported info 1
execute if score gamemode info matches 6 if data storage maps CurrentMap.Gamemodes.6 run scoreboard players set gamemodeSupported info 1

execute store result score playersReady info if entity @a[scores={ready=1}]

# Start game if preconditions allow
execute if score gamemode info matches 1.. if score gamemodeSupported info matches 1 if score playersReady info matches 2.. if score gamemodeActive info matches 0 run function kitpvp:interface/start-validated

execute unless score gamemode info matches 1.. run tellraw @a[scores={ready=1}] {"text":"No Gamemode was selected.","color": "red"}
execute if score gamemodeSupported info matches 0 run tellraw @a[scores={ready=1}] {"text":"The Map selected does not support this Gamemode.","color": "red"}
execute if score playersReady info matches ..1 run tellraw @a[scores={ready=1}] {"text":"At least 2 Players are required to start.","color": "red"}
execute if score gamemodeActive info matches 1 run tellraw @a[scores={ready=1},tag=!inGame] {"text":"A game is already running.","color": "red"}
