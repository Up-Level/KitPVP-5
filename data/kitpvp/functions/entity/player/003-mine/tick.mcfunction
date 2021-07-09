execute if score @s entity.state matches 0 run scoreboard players remove @s entity.time 1

execute if score @s entity.time matches ..0 if score @s entity.state matches 0 run scoreboard players set @s entity.state 1

particle minecraft:small_flame ~ ~1 ~ 0 0 0 0 1 force

execute if score @s entity.state matches 1 positioned ~ ~0.675 ~ as @e[type=minecraft:player,distance=..1] run effect give @s minecraft:blindness 5 0
