tag @s add owner
execute as @e[scores={entity.type=1}] run function kitpvp:create/entity/player-entities/tp-point/destroy-entity
tag @s remove owner
