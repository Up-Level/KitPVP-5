tag @s add owner
tag @e remove found
execute as @e[tag=playerEntity,scores={entity.type=-1}] run function kitpvp:entity/player/get-entity
tag @s remove owner
