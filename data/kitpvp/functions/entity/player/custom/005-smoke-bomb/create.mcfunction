summon minecraft:armor_stand ~ ~ ~ {Tags:["temp","playerEntity","presistRound"], Invisible:1, Small:1b}

scoreboard players set @e[tag=temp] entity.type 5
scoreboard players set @e[tag=temp] entity.state 0
scoreboard players set @e[tag=temp] entity.data 0
scoreboard players set @e[tag=temp] entity.time 120

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @s add mathf.entity0
function mathf:minecraft/entity-rotation-to-vector

execute store result entity @e[tag=temp,limit=1] Motion[0] double 0.025 run scoreboard players get o0 mathf.io
execute store result entity @e[tag=temp,limit=1] Motion[1] double 0.025 run scoreboard players get o1 mathf.io
execute store result entity @e[tag=temp,limit=1] Motion[2] double 0.025 run scoreboard players get o2 mathf.io

tag @e remove temp

playsound minecraft:entity.snowball.throw player @a ~ ~ ~ 1 .5
