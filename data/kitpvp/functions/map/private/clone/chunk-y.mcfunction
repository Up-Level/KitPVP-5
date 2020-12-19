function kitpvp:map/private/clone/chunk-z

execute if score chunkY temp < chunkYMax temp run scoreboard players add chunkY temp 1
execute if score chunkY temp < chunkYMax temp run function kitpvp:map/private/clone/chunk-y
