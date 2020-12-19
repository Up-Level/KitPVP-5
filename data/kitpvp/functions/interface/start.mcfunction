function kitpvp:map/fetch-map-info
function kitpvp:gamemode/fetch-gamemode-info

scoreboard players set gamemodeSupported info 0
execute store result score gamemodeId info run data get storage current-gamemode Gamemode.Id

execute if score gamemodeId info matches 1 if data storage current-map Gamemodes.1 run scoreboard players set gamemodeSupported info 1

execute if score gamemodeSupported info matches 1 run function kitpvp:interface/private/gamemode-supported
execute if score gamemodeSupported info matches 0 run function kitpvp:interface/private/gamemode-unsupported
