tag @e[tag=owner] add uuid0
function kitpvp:generic/uuid/check/owner-matches-uuid-entity

execute if score out.0 uuid matches 1 if entity @s[tag=entity.rideable] on passengers run ride @s[type=player] dismount

execute if score out.0 uuid matches 1 run function kitpvp:entity/player/internal/destroy

