scoreboard players operation posXNew temp = offsetX temp
scoreboard players operation posYNew temp = offsetY temp
scoreboard players operation posZNew temp = offsetZ temp

execute store result entity @e[tag=cloneChunkerNew,limit=1] Pos[0] double 1 run scoreboard players get posXNew temp
execute store result entity @e[tag=cloneChunkerNew,limit=1] Pos[1] double 1 run scoreboard players get posYNew temp
execute store result entity @e[tag=cloneChunkerNew,limit=1] Pos[2] double 1 run scoreboard players get posZNew temp

fill 0 16 10000 15 31 10015 air

execute as @e[tag=cloneChunker,limit=1] at @s run clone ~ ~ ~ ~15 ~15 ~15 0 16 10000
execute as @e[tag=cloneChunkerNew,limit=1] at @s run clone 0 16 10000 15 31 10015 ~ ~ ~
