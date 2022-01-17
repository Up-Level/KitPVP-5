tag @e[tag=entity] add uuid0
function kitpvp:generic/uuid/check/uuid-matches-owner-entity

execute if score out.0 uuid matches 1 run tag @s add found
