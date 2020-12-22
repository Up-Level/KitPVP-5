

# This doesnt work lmaoooooo

execute store result entity @s Owner[0] int 1 run scoreboard players get 0.0 uuid
execute store result entity @s Owner[1] int 1 run scoreboard players get 0.1 uuid
execute store result entity @s Owner[2] int 1 run scoreboard players get 0.2 uuid
execute store result entity @s Owner[3] int 1 run scoreboard players get 0.3 uuid

function kitpvp:generic-functions/uuid/get-owner-uuid
