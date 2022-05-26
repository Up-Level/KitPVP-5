tag @s add owner
execute as @e[tag=playerEntity,scores={entity.type=-4}] run function kitpvp:entity/player/destroy-entity
tag @s remove owner
