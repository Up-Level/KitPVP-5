execute as @e[type=minecraft:marker,tag=deleter] at @s run function kitpvp:map/delete-map-marker
kill @e[type=marker,tag=mapEntity]
kill @e[type=minecraft:marker,tag=clone]
