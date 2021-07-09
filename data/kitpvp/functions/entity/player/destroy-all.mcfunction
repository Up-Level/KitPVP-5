tag @s add owner
execute as @e[tag=playerEntity] run function kitpvp:entity/player/destroy-entity
tag @s remove owner
