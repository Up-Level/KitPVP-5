scoreboard players operation offsetZ temp = chunkZ temp
scoreboard players operation offsetZ temp *= #16 mathf.const

execute store result score posZ temp run data get storage current-map Map.Corner1[2]
scoreboard players operation posZ temp += offsetZ temp

execute store result entity @s Pos[0] double 1 run scoreboard players get posX temp
execute store result entity @s Pos[1] double 1 run scoreboard players get posY temp
execute store result entity @s Pos[2] double 1 run scoreboard players get posZ temp

#execute as @e[tag=cloneChunker,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b}

# Clone stuff here
function kitpvp:map/private/clone/clone-command

tellraw @a [{"score": {"objective": "temp","name": "posX"}}, " ", {"score": {"objective": "temp","name": "posY"}}, " ", {"score": {"objective": "temp","name": "posZ"}}]

tellraw @a [{"score": {"objective": "temp","name": "posXNew"}}, " ", {"score": {"objective": "temp","name": "posYNew"}}, " ", {"score": {"objective": "temp","name": "posZNew"}}]

execute if score chunkZ temp < chunkZMax temp run scoreboard players add chunkZ temp 1
execute if score chunkZ temp < chunkZMax temp run function kitpvp:map/private/clone/chunk-z
