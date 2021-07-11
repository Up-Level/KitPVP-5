tag @s add owner
tag @e remove found
execute as @e[tag=playerEntity,scores={entity.type=7}] run function kitpvp:entity/player/get-entity
tag @s remove owner
