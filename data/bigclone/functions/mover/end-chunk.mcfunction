# Moving from dump to target
scoreboard players operation mover.pos.x clone = mover.localpos.x clone
scoreboard players operation mover.pos.y clone = mover.localpos.y clone
scoreboard players operation mover.pos.z clone = mover.localpos.z clone

scoreboard players operation mover.pos.x clone *= #32 clone
scoreboard players operation mover.pos.y clone *= #32 clone
scoreboard players operation mover.pos.z clone *= #32 clone

scoreboard players operation mover.pos.x clone += target.pos.x clone
scoreboard players operation mover.pos.y clone += target.pos.y clone
scoreboard players operation mover.pos.z clone += target.pos.z clone

execute store result entity @e[type=minecraft:marker,tag=clone,tag=mover,limit=1] Pos[0] double 1 run scoreboard players get mover.pos.x clone
execute store result entity @e[type=minecraft:marker,tag=clone,tag=mover,limit=1] Pos[1] double 1 run scoreboard players get mover.pos.y clone
execute store result entity @e[type=minecraft:marker,tag=clone,tag=mover,limit=1] Pos[2] double 1 run scoreboard players get mover.pos.z clone

execute at @e[type=minecraft:marker,tag=clone,tag=mover,limit=1] run function bigclone:dump/from-dump

execute at @e[type=minecraft:marker,tag=clone,tag=mover,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["deleter"]}
