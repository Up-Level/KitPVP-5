summon minecraft:armor_stand ~ ~.785 ~ {Tags:["temp","playerEntity","entity.persistRound","entity.rideable","blockPoint"],Invisible:1,Small:1b,Passengers:[{id:"block_display",Tags:["temp","playerEntity","entity.persistRound","blockVisual"],block_state:{Name:"anvil"},transformation:{translation:[-0.5f,-0.740625f,-0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}]}

scoreboard players set @e[tag=temp] entity.type 15

scoreboard players set @e[tag=temp] entity.data1 0
scoreboard players set @e[tag=temp] entity.data2 0
scoreboard players set @e[tag=temp] entity.data3 0
scoreboard players set @e[tag=temp] entity.data4 0

scoreboard players set @e[tag=temp] entity.time 0

scoreboard players set @e[tag=temp,tag=blockPoint] entity.state 0
scoreboard players set @e[tag=temp,tag=blockVisual] entity.state 1

execute at @e[tag=temp,tag=blockPoint] rotated as @s run tp @e[tag=temp,tag=blockPoint] ~ ~ ~ ~ ~

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @s add mathf.entity0
function mathf:minecraft/entity-rotation-to-vector

execute store result entity @e[tag=temp,limit=1] Motion[0] double 0.025 run scoreboard players get o0 mathf.io
execute store result entity @e[tag=temp,limit=1] Motion[1] double 0.025 run scoreboard players get o1 mathf.io
execute store result entity @e[tag=temp,limit=1] Motion[2] double 0.025 run scoreboard players get o2 mathf.io

execute unless predicate utilities:is_sneaking run ride @s mount @e[tag=temp,tag=blockPoint,limit=1]
execute unless predicate utilities:is_sneaking run effect give @s minecraft:resistance 1 255 true

tag @e remove temp

playsound minecraft:entity.snowball.throw player @a ~ ~ ~ 1 .5
