scoreboard players remove @s entity.time 1

execute if score @s entity.time matches ..0 run tp @s 0 64 10000
execute if score @s entity.time matches ..0 run kill @s
