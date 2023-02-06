scoreboard players remove @s entity.time 1

execute if entity @e[tag=blockPoint] if score @s entity.time matches 20 run particle minecraft:block minecraft:bricks ^ ^.5 ^ .5 .5 .5 0. 5 force
execute if entity @e[tag=blockPoint] if score @s entity.time matches 20 run playsound minecraft:block.stone.break block @a ^ ^.5 ^ 0.1



execute if entity @e[tag=blockPoint] if score @s entity.time matches ..0 run particle minecraft:block minecraft:bricks ^ ^.5 ^ .5 .5 .5 0. 10 force
execute if entity @e[tag=blockPoint] if score @s entity.time matches ..0 run playsound minecraft:block.stone.break block @a ^ ^.5 ^ 0.5

execute if score @s entity.time matches ..0 run tp @s 0 64 10000
execute if score @s entity.time matches ..0 run kill @s
