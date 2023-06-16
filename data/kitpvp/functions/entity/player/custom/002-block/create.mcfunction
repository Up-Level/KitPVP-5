summon minecraft:area_effect_cloud ~ ~-0.375 ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648,Invulnerable:1b,Silent:1b,Tags:["blockPoint","temp","playerEntity","entity.persistRound"],Passengers:[{id:falling_block,Tags:["blockVisual","temp","playerEntity","entity.persistRound"],NoGravity:1b,NoAI:1b,Time:-2147483648,BlockState:{Name:"bricks"}},{id:shulker,Tags:["blockBox","temp","playerEntity","entity.persistRound"],NoAI:1b,Invulnerable:1b,Silent:1b}]}
effect give @e[tag=temp,tag=blockBox] minecraft:invisibility 999999 0 true

execute at @e[tag=temp,tag=blockPoint] run particle minecraft:block minecraft:bricks ^ ^.5 ^ .5 .5 .5 0. 10 force
execute at @e[tag=temp,tag=blockPoint] run playsound minecraft:block.stone.place block @a ^ ^.5 ^ .5

# execute rotated 0 0 run tp @e[tag=blockPoint,tag=temp] ^ ^-0.375 ^
# 0.375
scoreboard players set @e[tag=temp,tag=blockPoint] entity.type 2
scoreboard players set @e[tag=temp,tag=blockPoint] entity.state 0
scoreboard players operation @e[tag=temp,tag=blockPoint] entity.time = @s blockTime

scoreboard players set @e[tag=temp,tag=blockBox] entity.type 2
scoreboard players set @e[tag=temp,tag=blockBox] entity.state 1
scoreboard players operation @e[tag=temp,tag=blockBox] entity.time = @s blockTime

scoreboard players set @e[tag=temp,tag=blockVisual] entity.type 2
scoreboard players set @e[tag=temp,tag=blockVisual] entity.state 2
scoreboard players operation @e[tag=temp,tag=blockVisual] entity.time = @s blockTime

scoreboard players set @e[tag=temp] entity.data1 0
scoreboard players set @e[tag=temp] entity.data2 0
scoreboard players set @e[tag=temp] entity.data3 0
scoreboard players set @e[tag=temp] entity.data4 0

tag @s add uuid0
execute as @e[tag=temp,tag=blockPoint] run function kitpvp:generic/uuid/set/owner-from-entity

tag @s add uuid0
execute as @e[tag=temp,tag=blockBox] run function kitpvp:generic/uuid/set/owner-from-entity

tag @s add uuid0
execute as @e[tag=temp,tag=blockVisual] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp
