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

execute as @e[type=minecraft:marker,tag=clone,tag=mover,limit=1] run function bigclone:mover/setpos

execute at @e[type=minecraft:marker,tag=clone,tag=mover,limit=1] run function bigclone:dump/from-dump

execute at @e[type=minecraft:marker,tag=clone,tag=mover,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["deleter"]}
