execute store success entity @s Owner[0] int 1 run data get entity @e[tag=uuid0,limit=1] UUID[0]
execute store success entity @s Owner[1] int 1 run data get entity @e[tag=uuid0,limit=1] UUID[1]
execute store success entity @s Owner[2] int 1 run data get entity @e[tag=uuid0,limit=1] UUID[2]
execute store success entity @s Owner[3] int 1 run data get entity @e[tag=uuid0,limit=1] UUID[3]

function kitpvp:generic-functions/uuid/get-owner-uuid

tag @e remove uuid0
