#summon minecraft:armor_stand ~ ~ ~ {Tags: ["temp","playerEntity","Back"],DisabledSlots:16191,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:10}}]}

summon minecraft:armor_stand ~ ~ ~ {Tags: ["temp","playerEntity","Left"],DisabledSlots:16191,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:10}}]}

summon minecraft:armor_stand ~ ~ ~ {Tags: ["temp","playerEntity","Right"],DisabledSlots:16191,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:10}}]}

scoreboard players set @e[tag=temp] entity.type 10
#scoreboard players set @e[tag=temp,tag=Back] entity.state 0
scoreboard players set @e[tag=temp,tag=Left] entity.state 1
scoreboard players set @e[tag=temp,tag=Right] entity.state 2
scoreboard players set @e[tag=temp] entity.data 0
scoreboard players set @e[tag=temp] entity.time 0

#tag @s add uuid0
#execute as @e[tag=temp] if score @s entity.state matches 0 run function kitpvp:generic/uuid/set/owner-from-entity

tag @s add uuid0
execute as @e[tag=temp] if score @s entity.state matches 1 run function kitpvp:generic/uuid/set/owner-from-entity

tag @s add uuid0
execute as @e[tag=temp] if score @s entity.state matches 2 run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp
