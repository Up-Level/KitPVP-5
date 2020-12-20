scoreboard players operation offsetY temp = chunkY temp
scoreboard players operation offsetY temp *= #16 mathf.const

execute store result score posY temp run data get storage current-map Map.Corner1[1]
scoreboard players operation posY temp += offsetY temp

scoreboard players set chunkZ temp 0
execute as @e[tag=cloneChunker,limit=1] at @s run function kitpvp:map/private/clone/chunk-z

execute if score chunkY temp < chunkYMax temp run scoreboard players add chunkY temp 1
execute if score chunkY temp < chunkYMax temp run function kitpvp:map/private/clone/chunk-y
