tag @e[tag=owner] add uuid0
function kitpvp:generic/uuid/check/owner-matches-uuid-entity

execute if score out.0 uuid matches 1 if score @s entity.type matches 7 at @s as @a[distance=..0.01] at @s if entity @e[type=minecraft:horse,distance=..0.01] run tp @s ~ ~ ~

execute if score out.0 uuid matches 1 run tp @s 0 64 10000
execute if score out.0 uuid matches 1 run kill @s
