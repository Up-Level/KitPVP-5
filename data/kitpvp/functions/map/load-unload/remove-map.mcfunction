execute as @e[tag=deleter,limit=4] at @s run function kitpvp:map/load-unload/internal/marker-delete

execute if entity @e[tag=deleter] run schedule function kitpvp:map/load-unload/remove-map 1t

execute unless entity @e[tag=deleter] run kill @e[tag=mapEntity]
execute unless entity @e[tag=deleter] run kill @e[type=minecraft:marker,tag=clone]
