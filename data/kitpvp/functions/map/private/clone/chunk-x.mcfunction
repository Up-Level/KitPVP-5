function kitpvp:map/private/clone/chunk-y

execute if score chunkX temp < chunkXMax temp run scoreboard players add chunkX temp 1
execute if score chunkX temp < chunkXMax temp run function kitpvp:map/private/clone/chunk-x
