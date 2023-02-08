summon minecraft:fireball ~ ~ ~ {Tags:["temp","playerEntity"],ExplosionPower:1,Invulnerable:1b}

scoreboard players set @e[tag=temp] entity.type 8
scoreboard players set @e[tag=temp] entity.state 0
scoreboard players set @e[tag=temp] entity.data 0
scoreboard players set @e[tag=temp] entity.time 0

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @s add mathf.entity0
function mathf:minecraft/entity-rotation-to-vector

execute store result entity @e[tag=temp,limit=1] Motion[0] double 0.005 run scoreboard players get o0 mathf.io
execute store result entity @e[tag=temp,limit=1] Motion[1] double 0.005 run scoreboard players get o1 mathf.io
execute store result entity @e[tag=temp,limit=1] Motion[2] double 0.005 run scoreboard players get o2 mathf.io

execute store result entity @e[tag=temp,limit=1] power[0] double 0.001 run scoreboard players get o0 mathf.io
execute store result entity @e[tag=temp,limit=1] power[1] double 0.001 run scoreboard players get o1 mathf.io
execute store result entity @e[tag=temp,limit=1] power[2] double 0.001 run scoreboard players get o2 mathf.io

tag @e remove temp
