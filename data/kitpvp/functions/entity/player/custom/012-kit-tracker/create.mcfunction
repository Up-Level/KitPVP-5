summon marker ^ ^ ^ {Tags:["temp", "playerEntity", "entity.persistGame"]}

scoreboard players set @e[tag=temp] entity.type 12
scoreboard players set @e[tag=temp] entity.state 0

scoreboard players set @e[tag=temp] entity.data1 0
scoreboard players set @e[tag=temp] entity.data2 0
scoreboard players set @e[tag=temp] entity.data3 0
scoreboard players set @e[tag=temp] entity.data4 0

scoreboard players set @e[tag=temp] entity.time 0

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic/uuid/set/owner-from-entity

tag @e remove temp
