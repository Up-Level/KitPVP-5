summon minecraft:area_effect_cloud ^ ^ ^ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["temp","playerEntity"]}
tp @e[tag=temp] ~ ~ ~ facing ^ ^ ^1

execute at @e[tag=temp] rotated 0 0 run playsound minecraft:item.flintandsteel.use master @a ^ ^.5 ^ 1 0.8

scoreboard players set @e[tag=temp] entity.type 1
scoreboard players set @e[tag=temp] entity.state 0

tag @s add uuid0
execute as @e[tag=temp] run function kitpvp:generic-functions/uuid/set/owner-from-entity

tag @e remove temp
