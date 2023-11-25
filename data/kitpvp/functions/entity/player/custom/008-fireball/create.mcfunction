summon minecraft:fireball ~ ~ ~ {Tags:["temp","playerEntity","entity.persistRound"],ExplosionPower:1,Invulnerable:1b}

scoreboard players set @e[tag=temp] entity.type 8
scoreboard players set @e[tag=temp] entity.state 0

scoreboard players set @e[tag=temp] entity.data1 0
scoreboard players set @e[tag=temp] entity.data2 0
scoreboard players set @e[tag=temp] entity.data3 0
scoreboard players set @e[tag=temp] entity.data4 0

scoreboard players set @e[tag=temp] entity.time 0

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @s add mathf.entity0
function mathf:minecraft/entity-rotation-to-vector

execute store result entity @e[tag=temp,limit=1] Motion[0] double 0.005 run scoreboard players get o0 mathf.io
execute store result entity @e[tag=temp,limit=1] Motion[1] double 0.005 run scoreboard players get o1 mathf.io
execute store result entity @e[tag=temp,limit=1] Motion[2] double 0.005 run scoreboard players get o2 mathf.io
# 0.05264 drag per tick?
#execute store result entity @e[tag=temp,limit=1] power[0] double 0.00026275 run scoreboard players get o0 mathf.io
#execute store result entity @e[tag=temp,limit=1] power[1] double 0.00026275 run scoreboard players get o1 mathf.io
#execute store result entity @e[tag=temp,limit=1] power[2] double 0.00026275 run scoreboard players get o2 mathf.io

execute as @e[tag=temp,limit=1] store result entity @s power[0] double 0.00001 run data get entity @s Motion[0] 5264
execute as @e[tag=temp,limit=1] store result entity @s power[1] double 0.00001 run data get entity @s Motion[1] 5264
execute as @e[tag=temp,limit=1] store result entity @s power[2] double 0.00001 run data get entity @s Motion[2] 5264

tag @e remove temp
