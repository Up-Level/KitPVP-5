execute store result entity @s Pos[0] double 1 run scoreboard players get posX temp
execute store result entity @s Pos[1] double 1 run scoreboard players get posY temp
execute store result entity @s Pos[2] double 1 run scoreboard players get posZ temp

execute at @s run forceload add ~ ~

tp @s 0 16 0
