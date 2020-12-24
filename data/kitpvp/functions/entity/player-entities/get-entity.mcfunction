tag @e[tag=owner] add uuid0
function kitpvp:generic-functions/uuid/check/owner-matches-uuid-entity

execute if score out.0 uuid matches 1 run tag @s add found
