execute store result entity @s Pos[0] double 1 run scoreboard players get source.pos.x clone
execute store result entity @s Pos[1] double 1 run scoreboard players get source.pos.y clone
execute store result entity @s Pos[2] double 1 run scoreboard players get source.pos.z clone

execute at @s run forceload add ~ ~ ~160 ~160
