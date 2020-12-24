tag @s add owner
execute as @e[tag=playerEntity] run function kitpvp:entity/player-entities/destroy-entity
tag @s remove owner
