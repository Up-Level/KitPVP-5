tag @s add owner
execute as @e[tag=playerEntity,scores={entity.type=1}] run function kitpvp:entity/player-entities/destroy-entity
tag @s remove owner
