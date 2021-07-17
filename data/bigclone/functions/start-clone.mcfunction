kill @e[type=minecraft:marker,tag=clone]

summon minecraft:marker ~ ~ ~ {Tags:["clone","target"]}
summon minecraft:marker ~ ~ ~ {Tags:["clone","source"]}
summon minecraft:marker ~ ~ ~ {Tags:["clone","mover"]}

execute store result entity @e[type=minecraft:marker,tag=clone,tag=target,limit=1] Pos[0] double 1 run scoreboard players get target.pos.x clone
execute store result entity @e[type=minecraft:marker,tag=clone,tag=target,limit=1] Pos[1] double 1 run scoreboard players get target.pos.y clone
execute store result entity @e[type=minecraft:marker,tag=clone,tag=target,limit=1] Pos[2] double 1 run scoreboard players get target.pos.z clone

execute as @e[type=minecraft:marker,tag=clone,tag=source,limit=1] run function bigclone:as-source

scoreboard players set mover.localpos.x clone 0
scoreboard players set mover.localpos.y clone 0
scoreboard players set mover.localpos.z clone 0

scoreboard players set iteration clone 0

scoreboard players operation total clone = source.scale.x clone
scoreboard players operation total clone *= source.scale.y clone
scoreboard players operation total clone *= source.scale.z clone

scoreboard players operation temp clone = source.scale.z clone
scoreboard players remove temp clone 1


schedule function bigclone:axis/x 10t
