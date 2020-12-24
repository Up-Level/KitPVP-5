summon minecraft:area_effect_cloud ^ ^ ^ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["temp","playerEntity"]}

scoreboard players set @e[tag=temp] entity.type 1
scoreboard players set @e[tag=temp] entity.state 0

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic-functions/uuid/set/owner-from-entity

tag @e remove temp
