scoreboard players operation offsetZ temp = chunkX temp
scoreboard players operation offsetZ temp *= #16 mathf.const
scoreboard players operation posZ temp += offsetZ temp

execute store result entity @e[tag=cloneChunker,limit=1] Pos[0] double 1 run scoreboard players get posX temp
execute store result entity @e[tag=cloneChunker,limit=1] Pos[1] double 1 run scoreboard players get posY temp
execute store result entity @e[tag=cloneChunker,limit=1] Pos[2] double 1 run scoreboard players get posZ temp

# Clone stuff here
function kitpvp:map/private/clone/clone-command

tellraw @a [{"score": {"objective": "temp","name": "posX"}}, " ", {"score": {"objective": "temp","name": "posY"}}, " ", {"score": {"objective": "temp","name": "posZ"}}]

execute if score chunkZ temp < chunkZMax temp run scoreboard players add chunkZ temp 1
execute if score chunkZ temp < chunkZMax temp run function kitpvp:map/private/clone/chunk-z
