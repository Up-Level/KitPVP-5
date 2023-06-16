tag @s add owner
execute as @e[tag=playerEntity,tag=entity.persistRound] run function kitpvp:entity/player/internal/destroy-entity
tag @s remove owner
