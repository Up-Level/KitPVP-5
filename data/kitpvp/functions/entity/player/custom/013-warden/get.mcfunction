tag @s add owner
tag @e remove found
execute as @e[tag=playerEntity,scores={entity.type=13}] run function kitpvp:entity/player/internal/get-entity
tag @s remove owner
