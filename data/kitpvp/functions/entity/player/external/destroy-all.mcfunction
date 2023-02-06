tag @s add owner
execute as @e[tag=playerEntity,tag=!special] run function kitpvp:entity/player/internal/destroy-entity
tag @s remove owner
