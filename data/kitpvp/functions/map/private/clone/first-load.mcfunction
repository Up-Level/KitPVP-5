execute store result entity @s Pos[0] double 1 run scoreboard players get posX temp
execute store result entity @s Pos[1] double 1 run scoreboard players get posY temp
execute store result entity @s Pos[2] double 1 run scoreboard players get posZ temp

execute at @s run forceload add ~ ~ ~127 ~127
execute at @s run forceload add ~128 ~ ~255 ~127
execute at @s run forceload add ~ ~128 ~127 ~255
execute at @s run forceload add ~128 ~128 ~255 ~255

execute at @s run fill ~ ~ ~127 ~127
execute at @s run fill ~128 ~ ~255 ~127
execute at @s run fill ~ ~128 ~127 ~255
execute at @s run fill ~128 ~128 ~255 ~255

execute as @e[tag=destroyOfWorlds] at @s run function kitpvp:map/private/clone/destroy-map

tp @s 0 16 0