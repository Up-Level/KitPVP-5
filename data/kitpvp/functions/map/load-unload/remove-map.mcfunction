execute as @e[type=minecraft:marker,tag=deleter] at @s run function kitpvp:map/load-unload/internal/marker-delete
kill @e[tag=mapEntity]
kill @e[type=minecraft:marker,tag=clone]
