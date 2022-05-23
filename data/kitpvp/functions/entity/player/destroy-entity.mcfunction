tag @e[tag=owner] add uuid0
function kitpvp:generic/uuid/check/owner-matches-uuid-entity

execute if score out.0 uuid matches 1 if score @s entity.type matches 7 at @s if predicate utilities:has_passenger as @a[distance=..1] if predicate utilities:in_vehicle at @s run tp @s ~ ~ ~

execute if score out.0 uuid matches 1 run function kitpvp:entity/player/destroy

