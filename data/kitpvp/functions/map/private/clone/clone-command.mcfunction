scoreboard players operation posXNew temp = offsetX temp
scoreboard players operation posYNew temp = offsetY temp
scoreboard players operation posZNew temp = offsetZ temp

execute store result entity @e[tag=cloneChunkerNew,limit=1] Pos[0] double 1 run scoreboard players get posXNew temp
execute store result entity @e[tag=cloneChunkerNew,limit=1] Pos[1] double 1 run scoreboard players get posYNew temp
execute store result entity @e[tag=cloneChunkerNew,limit=1] Pos[2] double 1 run scoreboard players get posZNew temp

fill 0 16 10000 31 47 10031 air

# execute at @s run forceload add ~ ~ ~31 ~31
execute at @s run clone ^ ^ ^ ^31 ^31 ^31 0 16 10000 replace force

execute as @e[tag=cloneChunkerNew,limit=1] at @s run summon minecraft:area_effect_cloud ^ ^ ^ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["destroyerOfWorlds"]}
execute as @e[tag=cloneChunkerNew,limit=1] at @s run clone 0 16 10000 31 47 10031 ~ ~ ~ replace force

tp @s 0 16 0
