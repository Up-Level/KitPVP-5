# Called when cloning is finished

# Source unload
execute at @e[type=minecraft:marker,tag=clone,tag=source,limit=1] run forceload remove ~ ~ ~128 ~128

# delete the idiots who we dont need anymore
kill @e[type=minecraft:marker,tag=clone]

function kitpvp:map/maps/init

execute if score startingGamemode info matches 1 run function kitpvp:interface/start-postmap
execute if score startingGamemode info matches 1 run scoreboard players set startingGamemode info 0
