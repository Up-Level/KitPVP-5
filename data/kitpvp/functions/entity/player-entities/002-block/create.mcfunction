summon minecraft:area_effect_cloud ^ ^-0.375 ^ {Tags:["blockPoint","temp","playerEntity"],Age:-99999,Particle:"block air",Passengers:[{id:falling_block,Tags:["blockVisual","temp","playerEntity"],NoGravity:1b,NoAI:1b,Time:-2147483648,BlockState:{Name:"bricks"}},{id:shulker,Tags:["blockBox","temp","playerEntity"],NoAI:1b,Invulnerable:1b,Silent:1b}]}
effect give @e[tag=temp,tag=blockBox] minecraft:invisibility 999999 0 true

execute rotated 0 0 run tp @e[tag=blockPoint,tag=temp] ^ ^-0.375 ^

scoreboard players set @e[tag=temp,tag=blockPoint] entity.type 2
scoreboard players set @e[tag=temp,tag=blockPoint] entity.state 0

scoreboard players set @e[tag=temp,tag=blockVisual] entity.type 2
scoreboard players set @e[tag=temp,tag=blockVisual] entity.state -32

tag @s add uuid0
execute as @e[tag=temp,tag=blockPoint] run function kitpvp:generic-functions/uuid/set/owner-from-entity

tag @s add uuid0
execute as @e[tag=temp,tag=blockBox] run function kitpvp:generic-functions/uuid/set/owner-from-entity

tag @s add uuid0
execute as @e[tag=temp,tag=blockVisual] run function kitpvp:generic-functions/uuid/set/owner-from-entity

tag @e remove temp
