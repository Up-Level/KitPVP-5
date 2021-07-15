summon minecraft:armor_stand -10000 16 0 {Tags:["playerEntity","temp","blockPoint"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",Tags:["playerEntity","temp","blockVisual"],Time:-2147483648,NoGravity:1b,NoAI:1b,BlockState:{Name:"minecraft:grass_block"}}]}

# execute rotated 0 0 run tp @e[tag=blockPoint,tag=temp] ^ ^-0.375 ^
# 0.375
scoreboard players set @e[tag=temp,tag=blockPoint] entity.type 6
scoreboard players set @e[tag=temp,tag=blockPoint] entity.state 0
scoreboard players set @e[tag=temp,tag=blockPoint] entity.data 0

scoreboard players set @e[tag=temp,tag=blockVisual] entity.type 6
scoreboard players set @e[tag=temp,tag=blockVisual] entity.state 1
scoreboard players set @e[tag=temp,tag=blockVisual] entity.data 0

tag @s add uuid0
execute as @e[tag=temp,tag=blockPoint] run function kitpvp:generic/uuid/set/owner-from-entity

tag @s add uuid0
execute as @e[tag=temp,tag=blockVisual] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp
