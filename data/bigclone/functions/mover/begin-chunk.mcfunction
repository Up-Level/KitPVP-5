# Moving from source to dump
scoreboard players operation mover.pos.x clone = mover.localpos.x clone
scoreboard players operation mover.pos.y clone = mover.localpos.y clone
scoreboard players operation mover.pos.z clone = mover.localpos.z clone

scoreboard players operation mover.pos.x clone *= #32 clone
scoreboard players operation mover.pos.y clone *= #32 clone
scoreboard players operation mover.pos.z clone *= #32 clone

scoreboard players operation mover.pos.x clone += source.pos.x clone
scoreboard players operation mover.pos.y clone += source.pos.y clone
scoreboard players operation mover.pos.z clone += source.pos.z clone

execute as @e[type=minecraft:marker,tag=clone,tag=mover,limit=1] run function bigclone:mover/setpos

execute at @e[type=minecraft:marker,tag=clone,tag=mover,limit=1] run function bigclone:dump/to-dump
